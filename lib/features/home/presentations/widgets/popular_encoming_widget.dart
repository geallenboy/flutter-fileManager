
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/app_column_widget.dart';

class ListAnoounnce extends StatelessWidget {
  const ListAnoounnce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopularAnnouncements(image: AppImage.circle_avatar1, nameText: 'Хабиб Нурмагомедов ', bigText: "Хайрия учун зодлик билан, 10 туна ванна керак", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "Хайрия учун зодлик билан, 10 туна ванна керак", smalltext: "23 Yanvar, 2023.02.08"),
        ],
      ),
    );
  }
}
