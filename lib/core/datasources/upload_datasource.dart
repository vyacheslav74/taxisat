import 'package:flutter_common/core/entities/media.dart';

abstract class UploadDatasource {
  Future<MediaEntity> uploadProfilePicture(String filePath);
}
