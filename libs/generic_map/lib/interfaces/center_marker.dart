import 'package:flutter/material.dart';

class CenterMarker {
  final Widget widget;
  final Size size;
  final Alignment alignment;
  final int rotation;

  CenterMarker({
    required this.widget,
    required this.size,
    required this.alignment,
    this.rotation = 0,
  });
}
