import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/announcement.dart';
import '../../domain/repositories/announcements_repository.dart';

part 'announcements.event.dart';
part 'announcements.state.dart';
part 'announcements.freezed.dart';

@lazySingleton
class AnnouncementsBloc extends Cubit<AnnouncementsState> {
  final AnnouncementsRepository _repository;

  AnnouncementsBloc(this._repository) : super(const AnnouncementsState.initial());

  void load() async {
    emit(const AnnouncementsState.loading());
    final result = await _repository.getAnnouncements();
    result.fold(
      (failure) => emit(AnnouncementsState.error(failure.errorMessage)),
      (announcements) => announcements.isEmpty
          ? emit(const AnnouncementsState.empty())
          : emit(AnnouncementsState.loaded(announcements)),
    );
  }
}
