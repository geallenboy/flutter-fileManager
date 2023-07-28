import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/icons_catagory_widget.dart';

class FruitWidget extends StatelessWidget {
  const FruitWidget({Key? key}) : super(key: key);

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
        height: 100,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            IconCatagory(image: AppImage.fruit1, bigText: "Cабзаводлар "),
            IconCatagory(image: AppImage.fruit2, bigText: "Мевалар"),
            IconCatagory(image: AppImage.fruit3, bigText: "Узумлар "),
            IconCatagory(image: AppImage.fruit4, bigText: "Техника "),
          ],
        ),
      ),
    );
  }
}
