import 'package:flutter_common/core/entities/media.dart';
import 'package:rider_flutter/config/env.dart';
import 'package:rider_flutter/config/graphql/fragments/media.fragment.graphql.dart';

extension MediaFragmentExtension on Fragment$MediaFragment {
  MediaEntity get toEntity => MediaEntity(
        id: id,
        address: Env.serverUrl + address,
      );
}
