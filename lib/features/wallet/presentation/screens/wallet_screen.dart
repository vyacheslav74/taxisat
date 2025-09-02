import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

import '../blocs/wallet.dart';
import 'wallet_screen.desktop.dart';
import 'wallet_screen.mobile.dart';

@RoutePage()
class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  void initState() {
    locator<WalletBloc>().load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      child: BlocProvider.value(
        value: locator<WalletBloc>(),
        child: context.responsive(
          const WalletScreenMobile(),
          xl: const WalletScreenDesktop(),
        ),
      ),
    );
  }
}
