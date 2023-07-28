import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class AppBarContainerWidget extends StatelessWidget {

  Widget child;
   AppBarContainerWidget({Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(26),
          bottomRight: Radius.circular(26),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(5, 0),
            color: grey3,
          ),
          BoxShadow(
            offset: Offset(0, 1),
            color: white,
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 0),
            color: white,
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, -1),
            color: white,
          ),

        ],

      ),
      child: child,
    );
  }
}
