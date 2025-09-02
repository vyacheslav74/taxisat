import 'package:flutter_common/core/entities/cancel_reason.dart';
import 'package:rider_flutter/config/graphql/documents/track_order.graphql.dart';

extension CancelReasonFragmentX on Query$CancelReasons$orderCancelReasons {
  CancelReasonEntity get toEntity => CancelReasonEntity(
        id: id,
        name: title,
      );
}

extension CancelReasonQueryX on Query$CancelReasons {
  List<CancelReasonEntity> get toEntity => orderCancelReasons.map((e) => e.toEntity).toList();
}
