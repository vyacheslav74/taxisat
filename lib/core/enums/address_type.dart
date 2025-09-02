import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

enum AddressType {
  home,
  work,
  partner,
  gym,
  parent,
  cafe,
  park,
  other,
}

extension AddressTypeX on AddressType {
  String name(BuildContext context) {
    switch (this) {
      case AddressType.home:
        return 'Дом';
      case AddressType.work:
        return 'Работа';
      case AddressType.partner:
        return '';
      case AddressType.gym:
        return 'Магазин';
      case AddressType.parent:
        return 'Родители';
      case AddressType.cafe:
        return 'Кафе';
      case AddressType.park:
        return 'Парк';
      case AddressType.other:
        return 'Другое';
    }
  }

  IconData get icon {
    switch (this) {
      case AddressType.home:
        return Ionicons.home;
      case AddressType.work:
        return Ionicons.business;
      case AddressType.partner:
        return Ionicons.heart;
      case AddressType.gym:
        return Ionicons.fitness;
      case AddressType.parent:
        return Ionicons.people;
      case AddressType.cafe:
        return Ionicons.cafe;
      case AddressType.park:
        return Ionicons.leaf;
      case AddressType.other:
        return Ionicons.ellipsis_horizontal_circle;
    }
  }
}
