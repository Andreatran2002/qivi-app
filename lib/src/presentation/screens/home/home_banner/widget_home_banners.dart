import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:qivi_app/src/utils/my_const/my_const.dart';

class WidgetHomeBanner extends StatefulWidget {
  WidgetHomeBanner({Key? key}) : super(key: key);

  @override
  State<WidgetHomeBanner> createState() => _WidgetHomeBannerState();
}

class _WidgetHomeBannerState extends State<WidgetHomeBanner> {
  final List<String> paths = [
    'assets/banners/haohao.png',
    'assets/banners/coca.png',
    'assets/banners/yenkhanhhoa.png',
  ];

  int currentPos = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center,
        // decoration: BoxDecoration(color: COLOR_CONST.BLACK_30),
        children: [
          CarouselSlider(
              items: paths.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.25,
                      // margin: EdgeInsets.symmetric(horizontal: 5.0),

                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(i),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                // height: 400,
                aspectRatio: 2.0,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPos = index;
                  });
                },
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              )),
          Positioned(
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: paths.map((url) {
                int index = paths.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ),
        ]);
  }
}
