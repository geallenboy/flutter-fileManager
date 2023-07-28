import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';

import 'big_text_widget.dart';

class PopularAnnouncements extends StatelessWidget {
  String image;
  String bigText;
  String smalltext;
  String nameText;
  // String smalText;

  PopularAnnouncements({
    super.key,
    required this.image,
    required this.bigText,
    required this.smalltext,
    required this.nameText,
    // required this.smalText,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            margin: EdgeInsets.only(left: 20),
            width: 318.0,
            height: 130.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
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
          ),
        ),
        Positioned(
          left: 10,
          top: 10,
          bottom: 80,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image(
                  image: AssetImage(AppImage.fruit3),
                ),
              ),
              Container(child: BigText(text: "Мевалар ", size: 14, color: green1)),
            ],
          ),
        ),
        Positioned(
          left: 220,
          top: 10,
          child: BigText(
            text: smalltext,
            size: 10,
          ),
        ),
        Positioned(
          top: 85,
          left: 20,
          child: Column(
            children: [
              SizedBox(height: 5),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(image),
                  ),
                  SizedBox(width: 10),
                  Container(child: BigText(text: nameText, size: 14)),
                ],
              ),
              // SmallText(text: smalText),
            ],
          ),
        ),
        Positioned(
          top: 47,
          left: 24,
          right: 23,
          child: BigText(text: bigText, size: 14),
        ),
        Positioned(
          left: 300,
          right: 25,
          bottom: 10,
          child: Icon(Icons.star_border_sharp),
        ),
      ],
    );
  }
}
