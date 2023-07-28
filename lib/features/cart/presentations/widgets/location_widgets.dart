import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';


class LocationWidget extends StatelessWidget {
  String image1;
  String text;
   LocationWidget({Key? key,
    required this.image1,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 196,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 1),
            color: grey4,
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 1),
            color: grey4,

          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, -1),
            color: grey4,
          ),
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0, 10),
            color: grey4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 145,
            padding: EdgeInsets.only(top: 12, right: 12, left: 12),
            child: Image.asset(
               image1,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SvgPicture.asset(AppIcons.location, width: 16, height: 16,),
                  SizedBox(width: 4),
                  Text(text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
