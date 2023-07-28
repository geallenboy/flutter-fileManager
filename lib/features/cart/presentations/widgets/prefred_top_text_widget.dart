import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(bottom: 16, top: 16),
        child: Text("Ўзбекистоннинг олий навли  барра анори",style: TextStyle(color: mainDark, fontWeight: FontWeight.w700, ),));
  }
}
