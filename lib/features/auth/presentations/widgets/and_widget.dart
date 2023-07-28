import 'package:flutter/cupertino.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class AndWidget extends StatelessWidget {
  const AndWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, left: 16),
          height: 1,
          width: 152,
          color: grey3,
        ),
        Text("Ёки",style: TextStyle(color: grey2),),
        Container(
          margin: EdgeInsets.only(right: 16, left: 10),
          height: 1,
          width: 152,
          color: grey3,
        ),


      ],
    );
  }
}
