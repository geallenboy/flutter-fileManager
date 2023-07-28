import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';

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
        margin: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
        height: 130.0,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   IconButton(
                     onPressed: () {},
                     icon: Image(
                       image: AssetImage(AppImage.fruit3),
                     ),
                   ),
                   Container(
                     child: Text("Мевалар", style: TextStyle(color: grey1, fontSize: 13))),
                 ],
                   ),
                Text(smalltext),
              ],
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: 12,right: 12),

                child: Text(bigText, style: TextStyle(color: mainDark,fontSize: 15, fontWeight: FontWeight.w600,overflow: TextOverflow.ellipsis ),)),
            SizedBox(height: 16),
            Container(
              margin: EdgeInsets.only(right: 12,left: 12,bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(image),
                      ),
                      SizedBox(width: 4),
                      Container(child: Text(nameText)),
                    ],
                  ),
                  SvgPicture.asset(AppIcons.star_icon,color:starColor ,height: 20,width: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
