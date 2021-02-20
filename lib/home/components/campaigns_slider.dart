import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final imageList = [
  Image.asset("assets/images/slide1.jpg"),
  Image.asset("assets/images/slide2.jpg"),
  Image.asset("assets/images/slide3.jpg"),
];

class CapmpaignSlide extends StatelessWidget {
  const CapmpaignSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      child: CarouselSlider(
          items: imageList,
          options: CarouselOptions(
            autoPlay: true,
            scrollDirection: Axis.horizontal,
            height: height,
            viewportFraction: 1.0,
          )),
    );
  }
}
