import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

import 'big_text_widget.dart';

class RectangleCatagory extends StatelessWidget {
  String image;
  String bigText;
  String smalText;

  // String index;
  RectangleCatagory({
    super.key,
    required this.image,
    required this.bigText,
    required this.smalText,
    // required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 237,
      width: 291,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 0),
            color: white,
          ),
          BoxShadow(
            offset: Offset(0, 1),
            color: white,
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 0),
            color: white,
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, -1),
            color: white,
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          //images container
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              color: grey1,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //text container
          Expanded(
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                color: white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 12,
                          width: 12,
                          margin: EdgeInsets.only(top: 13, left: 13),
                          child: Image(image: AssetImage(AppImage.fruit3))),
                      Container(
                          margin: EdgeInsets.only(top: 13, left: 13),
                          child: BigText(text: "сабзавотлар", color: grey1, size: 14)),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 12, left: 12,top: 2,bottom: 6),
                    child: Text("5 125 00 сум  ",style: TextStyle(color: mainDark, fontSize: 20, fontWeight: FontWeight.w700),)
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 12, left: 12,top: 2),
                      child: Text("Марказий Осиё барра сабзавотларидан ассорти",style: TextStyle(color: grey2, fontSize: 14, fontWeight: FontWeight.w700),)


                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
