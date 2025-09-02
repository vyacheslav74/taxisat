import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:generic_map/generic_map.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:rider_flutter/core/datasources/geo_datasource.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rxdart/rxdart.dart';

part 'place_lookup.event.dart';
part 'place_lookup.state.dart';
part 'place_lookup.freezed.dart';

@lazySingleton
class PlaceLookupBloc extends Bloc<PlaceLookupEvent, PlaceLookupState> {
  final GeoDatasource geoDatasource;

  PlaceLookupBloc(this.geoDatasource) : super(const PlaceLookupState.initial()) {
    on<PlaceLookupEvent>(
      (event, emit) async {
        await event.map(
          onStarted: (e) async {
            emit(const PlaceLookupState.initial());
          },
          onQueryChanged: (value) async {
            if (value.query?.isEmpty ?? true) {
              add(const PlaceLookupEvent.onStarted());
              return;
            }
            final query = value.query!;
            if (query.length < 3) {
              emit(const PlaceLookupState.moreCharacters());
              return;
            }
            emit(const PlaceLookupState.loading());
            final result = await geoDatasource.getNearbyPlaces(
              query: query,
              latLng: value.latLng,
              radius: value.radius,
              language: value.language,
              mapProvider: value.mapProvider,
            );
            emit(await result.fold(
              (l) async => PlaceLookupState.error(l.errorMessage),
              (r) async => PlaceLookupState.loaded(
                places: r,
              ),
            ));
          },
        );
      },
      transformer: (events, mapper) {
        final debouncedEvents = events
            .where((event) => ((event is _OnQueryChanged && ((event).query?.length ?? 0) > 2)))
            .debounceTime(const Duration(milliseconds: 500));
        final notDebouncedEvents =
            events.where((event) => !(event is _OnQueryChanged && ((event).query?.length ?? 0) > 2));
        return MergeStream([debouncedEvents, notDebouncedEvents]).flatMap(mapper);
      },
    );
  }

  void onStarted() => add(const PlaceLookupEvent.onStarted());
}
