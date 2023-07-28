import 'package:flutter/cupertino.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class RowTextWidget extends StatelessWidget {
  String text1;
  String text2;
   RowTextWidget({Key? key,
    required this.text1,
     required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text1, style: TextStyle(fontSize: 14,color: grey2)),
          Text(text2, style: TextStyle(fontSize: 14, color: green1)),
        ],
      ),
    );
  }
}
