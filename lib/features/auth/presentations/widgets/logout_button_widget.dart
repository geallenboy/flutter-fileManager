import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class SigUpButtonWidget extends StatelessWidget {
  const SigUpButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 45,
        margin: EdgeInsets.only(bottom: 15,left: 16, right: 16),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              offset: Offset(1, 0),
              color: grey2.withOpacity(0.2),
            ),
            BoxShadow(
              offset: Offset(0, 1),
              color: grey4..withOpacity(0.2),
            ),
            BoxShadow(
              blurRadius: 1,
              offset: Offset(-1, 0),
              color: grey4..withOpacity(0.2),
            ),
            BoxShadow(
              blurRadius: 1,
              offset: Offset(0, -1),
              color: grey4..withOpacity(0.2),
            ),
          ],
        ),
        child: Center(
          child: Text("Рўйхатдан ўтиш",style: TextStyle(fontSize: 16, color: mainDark,fontWeight: FontWeight.w700),),
        ),
      ),
    );
  }
}
