import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';

class BottomNavigationBarContainerWidget extends StatelessWidget {
  const BottomNavigationBarContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        // color:white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 1),
            color: grey4,
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 1),
            color: grey4,

          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, -1),
            color: grey4,
          ),
          BoxShadow(
            blurRadius: 12,
            offset: Offset(0, 10),
            color: grey4,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            height: 60,
            decoration: BoxDecoration(
              color: green1,
              borderRadius: BorderRadius.circular(20),
              gradient: splashLinearGradient,
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.call_icon, color: white, height: 16,width: 16,),
                SizedBox(width: 10),
                Text("Қўнғироқ қилиш", style: TextStyle(color: white, fontSize: 16, fontWeight: FontWeight.w600),),
              ],
            ),
          ),
        ],

      ),
    );
  }
}
