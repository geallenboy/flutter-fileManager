import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

class RowTwoContainer extends StatelessWidget {

  String rightText1;
  String rightText2;
  String rightText3;

  String leftText1;
  String leftText2;
  String image;
   RowTwoContainer({Key? key,
     required this.rightText1,
     required this.rightText2,
     required this.leftText1,
     required this.leftText2,
     required this.image,
     required this.rightText3,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
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
        ],
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(top: 19, left: 30,bottom: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(text: leftText1,size: 14),
                SizedBox(height: 5),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 9,
                      backgroundColor: green3,
                      child: SvgPicture.asset(AppIcons.tick_circle,width: 7.66,height: 5.78,color: white),
                    ),
                    SizedBox(width: 5),
                    Text(leftText2, style: TextStyle(color: mainDark, fontSize: 14, fontWeight: FontWeight.w700),),

                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 1,
            height: 44,
            color: grey4,
          ),
          Container(
            margin: EdgeInsets.only(top: 22,right: 30,bottom: 19),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(text: rightText1,size: 14),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(rightText2, style: TextStyle(color: mainDark, fontSize: 14, fontWeight: FontWeight.w700),),
                    SizedBox(width: 4),
                    SmallText(text: rightText3),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}
