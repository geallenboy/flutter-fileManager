

import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/top_catagory_widget.dart';

class VerticalScrollContainer extends StatelessWidget {
  const VerticalScrollContainer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List picture = [
      AppImage.background_image8,
      AppImage.background_image10,
    ];

    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        ListProduct(image: AppImage.background_image10,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
        ListProduct(image: AppImage.background_image11,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
        ListProduct(image: AppImage.background_image12,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
        ListProduct(image: AppImage.background_image13,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
        ListProduct(image: AppImage.background_image14,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
        ListProduct(image: AppImage.background_image15,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
        ListProduct(image: AppImage.background_image16,  bigText: 'Barlos Agro', smalText: '49 та махсулот '),
      ],
    );
  }
}
