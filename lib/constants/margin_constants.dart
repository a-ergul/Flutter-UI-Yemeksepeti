import 'package:flutter/cupertino.dart';

class MarginConstants {
  static MarginConstants instance = MarginConstants._init();
  MarginConstants._init();

  final homeSymmetricVertical = EdgeInsets.only(bottom: 10);
  final homeSymmetricDouble =
      EdgeInsets.symmetric(horizontal: 14, vertical: 14);
  final homeSymetricminDouble =
      EdgeInsets.symmetric(vertical: 6, horizontal: 6);
}
