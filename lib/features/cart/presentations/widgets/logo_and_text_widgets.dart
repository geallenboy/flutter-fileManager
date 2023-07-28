import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class LogoAndTextWidget extends StatelessWidget {
  String text;
  String logo;
  LogoAndTextWidget({Key? key,
    required this.text,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(logo,width: 24, height: 24,),
        SizedBox(width: 8),
        Text(text, style: TextStyle(color: green1, fontSize: 22.4, fontWeight: FontWeight.w600,),),
      ],
    );
  }
}
