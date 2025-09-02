import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:rider_flutter/config/graphql/fragments/intent_result.fragment.graphql.dart';
import 'package:rider_flutter/config/graphql/schema.gql.dart';

extension IntentResultGqlX on Fragment$IntentResult {
  IntentResult get toEntity {
    switch (status) {
      case Enum$TopUpWalletStatus.OK:
        if (url != null) {
          return IntentResult.redirect(url: url!);
        } else {
          return const IntentResult.success();
        }

      case Enum$TopUpWalletStatus.Failed:
        return IntentResult.failure(
          errorMessage: error ?? 'Something went wrong',
        );

      case Enum$TopUpWalletStatus.Redirect:
        return IntentResult.redirect(
          url: url!,
        );

      case Enum$TopUpWalletStatus.$unknown:
        return const IntentResult.failure(
          errorMessage: 'IntentResult.toEntity: unknown status',
        );
    }
  }
}
