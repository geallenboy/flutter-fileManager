import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

import 'big_text_widget.dart';

class IconCatagory extends StatelessWidget {
  String image;
  String bigText;
  // String smalText;

  IconCatagory({
    super.key,
    required this.image,
    required this.bigText,
    // required this.smalText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 10),
      width: 90.0,
      height: 80.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: white,
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
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            SizedBox(height: 5),
            // SvgPicture.asset(image),
            CircleAvatar(backgroundImage: AssetImage(image),
            backgroundColor: white,),
            SizedBox(height: 5),
            BigText(text: bigText, size: 12),
            SizedBox(height: 5),
            // SmallText(text: smalText),
          ],
        ),
      ),
    );
  }
}
