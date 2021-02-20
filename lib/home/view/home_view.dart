import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ysepeti/constants/color_constants.dart';
import 'package:ysepeti/constants/margin_constants.dart';
import 'package:ysepeti/constants/padding_constants.dart';
import 'package:ysepeti/constants/text_constants.dart';
import 'package:ysepeti/home/components/account_header.dart';
import 'package:ysepeti/home/components/bottom_navigation_bar.dart';
import 'package:ysepeti/home/components/campaigns_slider.dart';
import 'package:ysepeti/home/components/location_card.dart';
import 'package:ysepeti/home/components/menu_buttons.dart';
import 'package:ysepeti/home/components/order_card.dart';

part "home_string_values.dart";

class HomeView extends StatefulWidget {
  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeStringValues values = HomeStringValues();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.instance.backgrondHomeView,
      appBar: buildAppBarhome(),
      bottomNavigationBar: new NavBar(),
      body: Column(
        children: [
          AccountHeader(),
          MenuButtons(),
          Container(height: 200, child: CapmpaignSlide()),
          HomeLocationCard(),
          Container(
              margin: MarginConstants.instance.homeSymmetricDouble,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: buildTextOncekiSiparislerim(context))),
          OrderCard(),
        ],
      ),
    );
  }

  AppBar buildAppBarhome() {
    return AppBar(
      backgroundColor: ColorConstants.instance.persianRed,
      title: Image.asset(
        "assets/images/logo.png",
      ),
      centerTitle: true,
      actions: [
        Icon(Icons.email),
        Padding(padding: PaddingConstants.instance.appbarPadding)
      ],
    );
  }

  Text buildTextOncekiSiparislerim(BuildContext context) {
    return Text(values.bodyText, style: TextConstants.bodyText(context));
  }
}
