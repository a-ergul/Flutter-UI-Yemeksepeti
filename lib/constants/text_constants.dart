import 'package:flutter/material.dart';

import 'color_constants.dart';

class TextConstants {
  static TextStyle headerTitle(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText1
        .copyWith(color: Colors.white, fontWeight: FontWeight.bold);
  }

  static TextStyle headerSubtitle(BuildContext context) {
    return Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.white);
  }

  static TextStyle bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
        fontWeight: FontWeight.bold,
        color: ColorConstants.instance.textOncekiSiparis);
  }

  static TextStyle menucardText(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .bodyText2
        .copyWith(color: Colors.white, fontWeight: FontWeight.bold);
  }

  static TextStyle locationtitleText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
        fontWeight: FontWeight.bold, color: ColorConstants.instance.evText);
  }

  static TextStyle locationsubtitleText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1.copyWith(
          fontWeight: FontWeight.bold,
        );
  }
}
