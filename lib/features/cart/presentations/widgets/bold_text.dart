import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';


class BoldText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BoldText({
    Key? key,
    this.color = boldTextColor,
    required this.text,
    this.size = 0,
    this.overflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'SFProText',
        fontSize: size == 0 ? 20 : size,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
