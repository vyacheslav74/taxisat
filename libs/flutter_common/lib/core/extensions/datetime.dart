import 'package:flutter/material.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:intl/intl.dart';

import '../../config/constants.dart';

extension DateTimeX on DateTime {
  bool isSameDate(DateTime to) =>
      year == to.year && month == to.month && day == to.day;

  String minutesFromNow(BuildContext context) {
    final diff = difference(DateTime.now());
    if (diff.isNegative) {
      return context.t.timePastDue;
    } else if (diff.inMinutes < 1) {
      return context.t.justNow;
    } else {
      return context.t.durationInMinutes(diff.inMinutes);
    }
  }

  bool get isToday => isSameDate(DateTime.now());

  String get _formatTimeAmPm => DateFormat('hh:mm a').format(this);

  String get _formatTime24Hours => DateFormat('HH:mm').format(this);

  String get _formatDateTimeAmPm => DateFormat('dd MMM hh:mm a').format(this);

  String get _formatDateTime24Hours => DateFormat('dd MMM HH:mm').format(this);

  String get formatTime =>
      Constants.showTimeIn24HourFormat ? _formatTime24Hours : _formatTimeAmPm;

  String get formatDateTime => Constants.showTimeIn24HourFormat
      ? _formatDateTime24Hours
      : _formatDateTimeAmPm;

  String formatDate(BuildContext context) {
    if (isToday) {
      return context.t.today;
    }
    if (isSameDate(DateTime.now().subtract(const Duration(days: 1)))) {
      return context.t.yesterday;
    }
    return DateFormat('dd MMM').format(this);
  }
}
