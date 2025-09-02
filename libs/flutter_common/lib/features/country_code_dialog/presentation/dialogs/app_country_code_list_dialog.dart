import 'package:flutter/cupertino.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';

import '../../domain/entities/country_code.dart';
import '../widgets/app_country_code_list.dart';

class AppCountryCodeListDialog extends StatefulWidget {
  final CountryCode? initialCountryCode;

  const AppCountryCodeListDialog({
    super.key,
    this.initialCountryCode,
  });

  @override
  State<AppCountryCodeListDialog> createState() => _AppCountryCodeListDialogState();
}

class _AppCountryCodeListDialogState extends State<AppCountryCodeListDialog> {
  CountryCode? selectedCountryCode;

  @override
  void initState() {
    super.initState();
    selectedCountryCode = widget.initialCountryCode;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: AppResponsiveDialog(
        type: context.responsive(
          DialogType.bottomSheet,
          xl: DialogType.dialog,
        ),
        onBackPressed: () => Navigator.of(context).pop(),
        header: (
          Ionicons.flag,
          context.t.selectDialCode,
          null,
        ),
        child: Container(
          height: 350,
          child: AppCountryCodeList(
            onChanged: (countryCode) {
              Navigator.of(context).pop(countryCode);
            },
          ),
        ),
      ),
    );
  }
}
