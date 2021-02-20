import 'package:flutter/material.dart';
import 'package:ysepeti/constants/color_constants.dart';
import 'package:ysepeti/constants/decoration_constants.dart';
import 'package:ysepeti/home/view/home_view.dart';

class OrderCard extends StatelessWidget {
  OrderCard({Key key}) : super(key: key);

  final HomeStringValues values = HomeStringValues();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 300,
        child: ListView(
          children: [
            buildContainer1(),
            buildContainer2(),
            buildContainer3(),
          ],
        ),
      ),
    );
  }

  Container buildContainer1() {
    return Container(
      height: 75,
      decoration: DecorationConstants.instance.orderDecoration,
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 15),
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                  color: ColorConstants.instance.minimumRate,
                  borderRadius: BorderRadius.circular(4)),
              child: Center(
                child: Text(
                  values.lowPoints,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  values.restoran1,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_drop_down),
                    Text(
                      values.detay,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(values.tarih1,
                    style: TextStyle(color: Colors.grey[600]))),
          )
        ],
      ),
    );
  }

  Container buildContainer2() {
    return Container(
      height: 75,
      decoration: DecorationConstants.instance.orderDecoration,
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 15),
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                  color: ColorConstants.instance.maximumRate,
                  borderRadius: BorderRadius.circular(4)),
              child: Center(
                child: Text(
                  values.highPoints,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  values.restoran2,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_drop_down),
                    Text(
                      values.detay,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(values.tarih2,
                    style: TextStyle(color: Colors.grey[600]))),
          )
        ],
      ),
    );
  }

  Container buildContainer3() {
    return Container(
      height: 75,
      decoration: DecorationConstants.instance.orderDecoration,
      child: Row(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 15),
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                  color: ColorConstants.instance.minimumRate,
                  borderRadius: BorderRadius.circular(4)),
              child: Center(
                child: Text(
                  values.lowPoints,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  values.restoran1,
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_drop_down),
                    Text(
                      values.detay,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  values.tarih2,
                  style: TextStyle(color: Colors.grey[600]),
                )),
          )
        ],
      ),
    );
  }
}
