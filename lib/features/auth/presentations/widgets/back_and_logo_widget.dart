import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class BackAndIconWidget extends StatelessWidget {
  String image1;
  String image2;

  BackAndIconWidget({
    Key? key,
    required this.image1,
    required this.image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: green1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.only(left: 16, right: 100),
              child: SvgPicture.asset(image1, color: white,height: 24,width: 24,),

            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            child: SvgPicture.asset(image2, color: white,height: 78,width: 154,),
          ),
        ],
      ),
    );
  }
}
// Image.asset(image1, height: 20, width: 20, color: Colors.white),
// Image.asset(image2, color: Colors.white, height: 84, width: 154),