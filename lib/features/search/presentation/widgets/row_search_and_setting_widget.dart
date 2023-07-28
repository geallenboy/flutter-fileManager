import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';

class RowSearchAndSetting extends StatelessWidget {
  RowSearchAndSetting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 10,
          child: Container(
            height: 40,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 16, right: 10,top: 50,bottom: 12),
            decoration: BoxDecoration(
              color: grey6,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: grey5,
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 12,),
                  child: SvgPicture.asset(AppIcons.search_icon,
                      height: 20, width: 20, color: grey3),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 4,top: 4),
                    child: Text("Қидириш", style: TextStyle(color: grey3, fontSize: 16)),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10,top: 50,bottom: 12),
            decoration: BoxDecoration(
              color: grey6,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: grey5,
                  blurRadius: 5.0,
                  offset: Offset(5, 5),
                ),
              ],
            ),
            height: 45,
            width: 45,
            child: Center(
              child: Container(
                child: SvgPicture.asset(AppIcons.setting_icon),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
