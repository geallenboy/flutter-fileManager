

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';

class ListProduct extends StatelessWidget {
  String image;
  String bigText;
  String smalText;

  // String index;
  ListProduct({
    super.key,
    required this.image,
    required this.bigText,
    required this.smalText,
    // required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartPage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        height: 291,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: grey1,
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
        child: Column(
          children: [
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
                    SizedBox(height: 6),
                    Container(
                        margin: EdgeInsets.only(right: 12, left: 12,top: 2),
                        child: Text("5 125 00 сум  ",style: TextStyle(color: mainDark, fontSize: 20, fontWeight: FontWeight.w700),)
                    ),
                    SizedBox(height: 6),
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
      ),
    );
  }
}
