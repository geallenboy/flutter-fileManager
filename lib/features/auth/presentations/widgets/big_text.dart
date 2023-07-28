import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';


class BoldText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BoldText({
    Key? key,
    this.color,
    required this.text,
    this.size = 26,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Text(
        text,
        maxLines: 2,
        overflow: overflow,
        style: TextStyle(
          fontFamily: 'SFProText',
          fontSize: size,
          color: mainDark,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
