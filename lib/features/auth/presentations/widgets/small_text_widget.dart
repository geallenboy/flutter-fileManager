import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class SmalText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;

  SmalText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 14,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'SFProText',
          fontSize: size,
          color: grey2,
          height: height,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
