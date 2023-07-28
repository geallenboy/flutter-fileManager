import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/widgets/prefred_top_text_widget.dart';

class TitleTextAndIconWidget extends StatelessWidget {
  const TitleTextAndIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 16, right: 12, left: 16, top: 16),
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: grey4,
          ),
          child: GestureDetector(
              onTap: () {}, child: SvgPicture.asset(AppIcons.back_icon,height: 24, width: 24,color: mainDark,)),
        ),
        SizedBox(width: 12),
        TitleTextWidget(),
      ],
    );
  }
}
