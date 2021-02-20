import 'package:flutter/material.dart';

class PaddingConstants {
  static PaddingConstants instance = PaddingConstants._init();
  PaddingConstants._init();

  final appbarPadding = EdgeInsets.all(7);
  final homeSymmetric = EdgeInsets.symmetric(vertical: 14);
  final menuCardButton = EdgeInsets.symmetric(vertical: 12, horizontal: 18);
}
