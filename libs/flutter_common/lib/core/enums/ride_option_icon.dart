import 'package:flutter/widgets.dart';
import 'package:ionicons/ionicons.dart';

enum RideOptionIcon {
  pet,
  twoWay,
  luggage,
  packageDelivery,
  shopping,
  custom1,
  custom2,
  custom3,
  custom4,
  custom5,
}

extension RideOptionX on RideOptionIcon {
  IconData get icon {
    switch (this) {
      case RideOptionIcon.pet:
        return Ionicons.paw;
      case RideOptionIcon.twoWay:
        return Ionicons.repeat;
      case RideOptionIcon.luggage:
        return Ionicons.briefcase;
      case RideOptionIcon.packageDelivery:
        return Ionicons.cube;
      case RideOptionIcon.shopping:
        return Ionicons.bag_handle;
      case RideOptionIcon.custom1:
        return Ionicons.volume_mute;
      case RideOptionIcon.custom2:
        return Ionicons.body;
      case RideOptionIcon.custom3:
        return Ionicons.cube_outline;
      case RideOptionIcon.custom4:
        return Ionicons.cube_outline;
      case RideOptionIcon.custom5:
        return Ionicons.cube_outline;
    }
  }
}
