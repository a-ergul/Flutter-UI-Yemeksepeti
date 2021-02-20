import 'package:flutter/material.dart';
import 'package:ysepeti/constants/color_constants.dart';
import 'package:ysepeti/constants/margin_constants.dart';
import 'package:ysepeti/constants/text_constants.dart';
import 'package:ysepeti/home/view/home_view.dart';

class HomeLocationCard extends StatefulWidget {
  HomeLocationCard({Key key}) : super(key: key);

  @override
  _HomeLocationCardState createState() => _HomeLocationCardState();
}

class _HomeLocationCardState extends State<HomeLocationCard> {
  final HomeStringValues values = HomeStringValues();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Container(
            margin: MarginConstants.instance.homeSymmetricVertical,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 4.0)]),
            child: Container(
              margin: MarginConstants.instance.homeSymetricminDouble,
              child: Row(
                children: [
                  IconButton(
                    iconSize: 35,
                    icon: Icon(Icons.home),
                    onPressed: () {},
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(values.ev,
                            style: TextConstants.locationtitleText(context)),
                        Text(values.adres,
                            style: TextConstants.locationsubtitleText(context))
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: ColorConstants.instance.listelebutton,
                      ),
                      onPressed: () {})
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Container(
                margin: MarginConstants.instance.homeSymmetricVertical,
                height: 70,
                decoration: BoxDecoration(
                  color: ColorConstants.instance.listelebutton,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(values.restoran,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17)),
                      Text(values.listele,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17)),
                    ],
                  ),
                )))
      ],
    );
  }
}
