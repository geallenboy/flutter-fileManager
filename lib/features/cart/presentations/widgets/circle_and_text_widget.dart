import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/small_text_widget.dart';

class CircleAndTextWidget extends StatelessWidget {
  String text;
  String image;
  CircleAndTextWidget({Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 14,
          child: Image.asset(image,fit: BoxFit.cover,)
        ),
        SizedBox(width: 8),
        SmallText(text: text,size: 14,color: Colors.black,),
      ],
    );
  }
}
