import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  PageController pageController = PageController(viewportFraction: 0.95);
  var _currPageValue = 0.0;
  var _scaleFactor = 0.8;
  // double _height = ;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        // print(_currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  List banner = [
    AppImage.background_image0,
    AppImage.background_image3,
    AppImage.background_image2,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: grey4,
            blurRadius: 5.0,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: white,
            offset: Offset(-5, 0),
          ),
          BoxShadow(
            color: white,
            offset: Offset(5, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //banner
          Container(
            height: 180,
            child: PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (context, index) {
                return _buildPageItem(index);
              },
            ),
          ),
          SizedBox(height: 10),
          // dots
          DotsIndicator(
            dotsCount: 4,
            position: _currPageValue as int,
            decorator: DotsDecorator(
              activeColor: grey3,
              size: const Size.square(5.5),
              activeSize: Size(18.0, 3.0),
              color: grey2, // Inactive color
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(height: 20),
          //slider section
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            // Write Tap Code Here.
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 5, right: 5, top: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: index.isEven ? starColor : mainDark,
              image: DecorationImage(
                image: AssetImage(banner[index]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
