import 'package:dartz/dartz.dart';
import 'package:rider_flutter/core/error/failure.dart';

import '../entity/announcement.dart';

abstract class AnnouncementsRepository {
  Future<Either<Failure, List<AnnouncementEntity>>> getAnnouncements();
}
