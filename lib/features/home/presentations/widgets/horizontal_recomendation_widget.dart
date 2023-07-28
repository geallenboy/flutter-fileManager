import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/top_catagory_widget.dart';

class RecomendationHorizontalWidget extends StatelessWidget {
  const RecomendationHorizontalWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List picture = [
      AppImage.background_image8,
      AppImage.background_image10,
    ];

    return Container(
      height: 320,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          RectangleCatagory(image: AppImage.background_image9,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
          RectangleCatagory(image: AppImage.background_image10,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
        ],
      ),
    );
  }
}
