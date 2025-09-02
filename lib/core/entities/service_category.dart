import 'package:freezed_annotation/freezed_annotation.dart';

import 'service.dart';

part 'service_category.freezed.dart';
part 'service_category.g.dart';

@Freezed(fromJson: true)
class ServiceCategoryEntity with _$ServiceCategoryEntity {
  const factory ServiceCategoryEntity({
    required String id,
    required String name,
    required List<ServiceEntity> services,
  }) = _ServiceCategoryEntity;

  factory ServiceCategoryEntity.fromJson(Map<String, dynamic> json) => _$ServiceCategoryEntityFromJson(json);
}
