import 'package:rider_flutter/config/graphql/schema.gql.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';

extension GatewayLinkMethodGqlX on Enum$GatewayLinkMethod {
  GatewayLinkMethod get toEntity => switch (this) {
        Enum$GatewayLinkMethod.none => GatewayLinkMethod.none,
        Enum$GatewayLinkMethod.redirect => GatewayLinkMethod.redirect,
        Enum$GatewayLinkMethod.manual => GatewayLinkMethod.manual,
        Enum$GatewayLinkMethod.$unknown => throw Exception('unsupported'),
      };
}
