import 'package:flutter/material.dart';
import 'package:ysepeti/constants/color_constants.dart';
import 'package:ysepeti/constants/decoration_constants.dart';
import 'package:ysepeti/constants/padding_constants.dart';
import 'package:ysepeti/constants/text_constants.dart';
import 'package:ysepeti/home/view/home_view.dart';

class MenuButtons extends StatelessWidget {
  final HomeStringValues values = HomeStringValues();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                  padding: PaddingConstants.instance.menuCardButton,
                  color: ColorConstants.instance.persianRed,
                  child: GestureDetector(
                    child: Container(
                      decoration:
                          DecorationConstants.instance.menuCardDecoration,
                      child: Center(
                        child: buildTextleft(context),
                      ),
                    ),
                  ))),
          Expanded(
              child: Container(
                  padding: PaddingConstants.instance.menuCardButton,
                  color: ColorConstants.instance.persianRed,
                  child: GestureDetector(
                    child: Container(
                      decoration:
                          DecorationConstants.instance.menuCardDecoration,
                      child: Center(
                        child: buildTextright(context),
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }

  Text buildTextleft(BuildContext context) {
    return Text(values.secilmisMenu,
        style: TextConstants.menucardText(context));
  }

  Text buildTextright(BuildContext context) {
    return Text(values.vodafoneMenu,
        style: TextConstants.menucardText(context));
  }
}
