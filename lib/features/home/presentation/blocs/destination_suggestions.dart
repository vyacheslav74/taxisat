import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rider_flutter/core/entities/favorite_location.dart';
import 'package:flutter_common/core/entities/place.dart';
import 'package:rider_flutter/features/home/features/welcome/domain/repositories/new_order_repository.dart';

part 'destination_suggestions.state.dart';
part 'destination_suggestions.freezed.dart';

@lazySingleton
class DestinationSuggestionsCubit extends Cubit<DestinationSuggestionsState> {
  final NewOrderRepository repository;

  DestinationSuggestionsCubit(this.repository) : super(const DestinationSuggestionsState.initial());

  void onStarted() async {
    emit(const DestinationSuggestionsState.loading());
    final result = await repository.getDestinationSuggestions();
    result.fold(
      (failure) => emit(DestinationSuggestionsState.error(failure.errorMessage)),
      (response) => emit(DestinationSuggestionsState.loaded(favorites: response.$1, recents: response.$2)),
    );
  }
}
