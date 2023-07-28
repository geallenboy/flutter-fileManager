import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/catagory_container_widgets.dart';

class HorizonTalCompanyList extends StatelessWidget {
  const HorizonTalCompanyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CartPage(),
          ),
        );
      },
      child: Container(
        height: 120,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CatagoriyWidget(image: AppImage.company_image1, bigText: 'Agro oil', smalText: '49 та махсулот '),
            CatagoriyWidget(image: AppImage.company_image2, bigText: 'Barlos Agro', smalText: '49 та махсулот '),
            CatagoriyWidget(image: AppImage.company_image3, bigText: 'Agro oil', smalText: '49 та махсулот '),
          ],
        ),
      ),
    );
  }
}
