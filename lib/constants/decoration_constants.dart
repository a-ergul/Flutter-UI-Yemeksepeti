import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecorationConstants {
  static DecorationConstants instance = DecorationConstants._init();
  DecorationConstants._init();

  final orderDecoration = BoxDecoration(
      color: Colors.white,
      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3)]);

  final menuCardDecoration = BoxDecoration(
      border:
          Border.all(color: Colors.white, width: 1.5, style: BorderStyle.solid),
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(5));
}
