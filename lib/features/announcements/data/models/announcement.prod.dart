import 'package:rider_flutter/config/graphql/documents/announcements.graphql.dart';
import 'package:rider_flutter/features/announcements/domain/entity/announcement.dart';

extension AnnouncementProdX on Query$Announcements {
  List<AnnouncementEntity> get toEntity {
    return announcements.edges.map((e) => e.node.toEntity).toList();
  }
}

extension AnnouncementNodeProdX on Query$Announcements$announcements$edges$node {
  AnnouncementEntity get toEntity {
    return AnnouncementEntity(
      id: id,
      title: title,
      description: description,
      url: url,
    );
  }
}
