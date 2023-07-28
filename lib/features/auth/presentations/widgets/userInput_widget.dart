import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/app_icon_widgets.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';

class UserInputWidget extends StatelessWidget {
  TextEditingController userInput;
  String hintTitle;
  // TextInputType keyboardType;


  UserInputWidget({Key? key,
     required this.userInput,
     required this.hintTitle,
     // required this.keyboardType,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      // margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 0),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 0),
            color: Colors.black.withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, -1),
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10,left: 10),
            child: SvgPicture.asset(AppIcons.call_icon,height: 20,width: 20,color: grey3,),
          ),
          Text("+998",style: TextStyle(color: mainDark,fontSize: 16,fontWeight: FontWeight.w700),),
          SizedBox(width: 8),
          Container(
            height: 20,
            width: 1,
            color: grey3,
          ),
          Container(
            child: TextField(
              controller: userInput,
              // autocorrect: false,
              // enableSuggestions: false,
              // autofocus: false,
              decoration:
              InputDecoration(
                hintText: hintTitle,
                hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic),
              ),
// keyboardType: keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}


