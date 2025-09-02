import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/features/wallet/presentation/components/wallet_transaction_item.dart';
import 'package:rider_flutter/gen/assets.gen.dart';

import '../blocs/wallet.dart';

class WalletActivities extends StatelessWidget {
  const WalletActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<WalletBloc, WalletState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: AnimatedSwitcher(
              duration: AnimationDuration.pageStateTransitionMobile,
              child: state.map(
                  initial: (_) => const SizedBox(),
                  loading: (_) => Assets.lottie.loading.lottie(height: 300, width: double.infinity),
                  loaded: (loaded) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (loaded.data.transactions.isEmpty) ...[
                          Expanded(
                            child: Center(
                              child: Text(
                                context.translate.noActivitiesYet,
                                style: context.titleSmall,
                              ),
                            ),
                          )
                        ],
                        if (loaded.data.transactions.isNotEmpty) ...[
                          Text(
                            context.translate.activities,
                            style: context.titleMedium,
                          ),
                          const SizedBox(height: 16),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: loaded.data.transactions
                                    .map((e) => Padding(
                                          padding: const EdgeInsets.only(bottom: 16),
                                          child: WalletTransactionItem(
                                            transaction: e,
                                          ),
                                        ))
                                    .toList(),
                              ),
                            ),
                          )
                        ],
                      ],
                    );
                  },
                  error: (error) {
                    return Text(error.message);
                  }),
            ),
          );
        },
      ),
    );
  }
}
