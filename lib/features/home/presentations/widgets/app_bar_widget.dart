import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      padding: EdgeInsets.only(right: 10, left: 16, top: 52,bottom: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 28.0,
                  width: 28.0,
                  child: CircleAvatar(
                    backgroundColor: white,
                    backgroundImage: AssetImage(AppImage.circle_avatar1),
                  ),
                ),
              ),
              // appBarText
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("Кучкоров Мансур ", style: TextStyle(color: mainDark, fontSize: 16, fontWeight: FontWeight.w600),))
            ],
          ),
          // AppbarText
          Row(
            children: [
              IconButton(
                icon: Container(
                  child: SvgPicture.asset(AppIcons.search_icon,color: grey3,height: 24,width: 24,),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Container(
                  child: SvgPicture.asset(AppIcons.notification_icon,color: grey3,height: 24,width: 24,),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
