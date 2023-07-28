import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

import 'app_icon_widgets.dart';
import 'big_text_widget.dart';


class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  AccountWidget({Key? key, required this.appIcon, required this.bigText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: Row(
        children: [
          appIcon,
          SizedBox(width: 20),
          bigText,
        ],
      ),
      decoration: BoxDecoration(
        color: white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, 2),
            color: grey1.withOpacity(0.2),
          ),
        ],
      ),
    );
  }
}
