import 'package:flutter/material.dart';
import 'package:ysepeti/constants/color_constants.dart';
import 'package:ysepeti/constants/text_constants.dart';
import 'package:ysepeti/home/view/home_view.dart';

class AccountHeader extends StatelessWidget {
  final HomeStringValues values = HomeStringValues();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: ColorConstants.instance.bostonBlue,
        height: 20,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.perm_contact_calendar_sharp,
                  size: 35,
                  color: ColorConstants.instance.iconAccount,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  values.isimSoyisim,
                  style: TextConstants.headerTitle(context),
                ),
                Text(
                  values.derece,
                  style: TextConstants.headerSubtitle(context),
                ),
              ],
            ),
            Spacer(),
            Container(
              width: 50,
              color: ColorConstants.instance.awardButton,
              child: Center(
                child: Icon(
                  Icons.emoji_events,
                  size: 32,
                  color: ColorConstants.instance.awardyellow,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
