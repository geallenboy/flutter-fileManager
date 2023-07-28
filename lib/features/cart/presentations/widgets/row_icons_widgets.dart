import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/icons.dart';

class RowIconWidget extends StatelessWidget {
  RowIconWidget({Key? key,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 36,
          width: 36,
          margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: grey2,
          ),
          child: SvgPicture.asset(AppIcons.back_icon,color: white,width: 20,height: 20,)
        ),
        Container(
          height: 36,
          width: 36,
            margin: EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: grey2,
          ),
            child: SvgPicture.asset(AppIcons.star_icon2,color: white,width: 12,height: 12,)

        ),
      ],
    );
  }
}
