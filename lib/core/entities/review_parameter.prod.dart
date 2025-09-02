import 'package:rider_flutter/config/graphql/fragments/review_parameter.fragment.graphql.dart';

import 'review_parameter.dart';

extension ReviewParameterGqlX on Fragment$ReviewParameter {
  ReviewParameterEntity get toEntity => ReviewParameterEntity(
        id: id,
        name: title,
        isGood: isGood,
      );
}
