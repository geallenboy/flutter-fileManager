import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

import 'big_text_widget.dart';

class CatagoriyWidget extends StatelessWidget {
  String image;
  String bigText;
  String smalText;

  CatagoriyWidget({
    super.key,
    required this.image,
    required this.bigText,
    required this.smalText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 10),
      width: 134.0,
      height: 119.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
          color: white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 0),
            color: white.withOpacity(0.2),
          ),
          BoxShadow(
            offset: Offset(0, 1),
            color: white.withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 0),
            color: white..withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, -1),
            color: white..withOpacity(0.2),
          ),
        ],
      ),
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 16),
            CircleAvatar(backgroundImage: AssetImage(image)),
            SizedBox(height: 5),
            BigText(text: bigText, size: 12),
            SizedBox(height: 4),
            Text(smalText, style: TextStyle(color: grey1, fontSize: 12,),),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
