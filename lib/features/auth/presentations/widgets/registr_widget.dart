import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/app_icon_widgets.dart';

class AppTextFiled extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final String icon;
  final bool isObscure;

  AppTextFiled({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.icon,
    required this.isObscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isObscure
        ? Container(
            height: 50,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(1, 1),
                  color: grey1.withOpacity(0.2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 12),
                  child: SvgPicture.asset(AppIcons.call_icon,
                      height: 20, width: 20, color: grey3),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4, left: 9.67),
                  child: Text(
                    '+9989',
                    style:
                        TextStyle(color: mainDark, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 20,
                  width: 1,
                  color: grey3,
                  margin: EdgeInsets.only(top: 4, left: 8),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: isObscure ? false : true,
                      controller: textEditingController,
                      decoration: InputDecoration(
                        hintText: "(00) 000 00 00",
                        hintStyle: TextStyle(color: grey3, fontSize: 16),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.0,
                            color: white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 1.0,
                            color: white,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 50,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: Offset(1, 1),
                  color: grey1.withOpacity(0.2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 4, left: 12),
                  child: SvgPicture.asset(AppIcons.key_icon,
                      height: 20, width: 20, color: grey3),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: isObscure ? true : false,
                      controller: textEditingController,
                      decoration: InputDecoration(
                        suffixIcon: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: SvgPicture.asset(AppIcons.eye_icon,color: grey3,height: 24,width: 24,),
                        ),
                        hintText: "Паролингизни киритинг",
                        hintStyle: TextStyle(color: grey3, fontSize: 16),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            width: 1.0,
                            color: white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            width: 1.0,
                            color:white,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
