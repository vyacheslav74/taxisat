import 'package:dartz/dartz.dart';

import 'package:rider_flutter/core/error/failure.dart';

import 'package:rider_flutter/features/announcements/domain/entity/announcement.dart';

import '../../domain/repositories/announcements_repository.dart';
import 'package:injectable/injectable.dart';

@dev
@LazySingleton(as: AnnouncementsRepository)
class AnnouncementsRepositoryMock implements AnnouncementsRepository {
  @override
  Future<Either<Failure, List<AnnouncementEntity>>> getAnnouncements() async {
    await Future.delayed(const Duration(seconds: 1));
    return const Right([
      AnnouncementEntity(
        id: "1",
        title: "Get discounts with gifts!",
        description: "Lorem ipsum dolor sit amet, consetetur sadipscing voluptua. At vero eos et",
        url: null,
      ),
      AnnouncementEntity(
        id: "2",
        title: "Get rides with your favorite driver anytime they are around!",
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et",
        url: null,
      ),
      AnnouncementEntity(
        id: "3",
        title: "You got 5 stars from 15 drivers!",
        description:
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquy",
        url: "https://ridy.io",
      )
    ]);
  }
}
