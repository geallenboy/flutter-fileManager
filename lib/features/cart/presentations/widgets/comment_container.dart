import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/small_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';

class CommentContainer extends StatelessWidget {
  String text1;
  String text2;
  String text3;
  String image1;
  // String image2;

  CommentContainer({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image1,
    // required this.image2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 102,
      margin: EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: grey4,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 2),
            color: grey1.withOpacity(0.2),
            // color: Color(0xFFB8B8B8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(right: 14, left: 14, top: 14),
            child: Text(text1,style: TextStyle(color: mainDark, fontSize: 16, fontWeight: FontWeight.w600),),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Container(
               margin: EdgeInsets.only(right: 12, left: 12,bottom: 16),
               child: Row(
                 children: [
                   CircleAvatar(
                     radius: 8,
                     child: Image(image: AssetImage(image1),)),
                   SizedBox(width: 4),
                   BigText(text: text2,size: 14,),
                 ],
               ),
             ),
              Container(
                  margin: EdgeInsets.only(right: 12, left: 12,bottom: 16),
                  child: SmalText(text: text3,color: grey1,size: 13)),
            ],
          ),
        ],
      ),
    );
  }
}
