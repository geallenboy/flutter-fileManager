import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';

class PopularCompanyTextWidget extends StatelessWidget {
  String companyName;
  String  text;
   PopularCompanyTextWidget({Key? key,
     required this.companyName,
     required this.text,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartPage(),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(companyName,style: TextStyle(color: mainDark, fontSize: 18, fontWeight: FontWeight.w600,fontFamily: 'SF Pro Text'),),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(text, style: TextStyle(color: grey2, fontSize: 16, fontWeight: FontWeight.w600,fontFamily: 'SF Pro Text'),),
          ),
        ],
      ),
    );
  }
}
