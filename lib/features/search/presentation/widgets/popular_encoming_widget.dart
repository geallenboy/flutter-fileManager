

import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/app_column_widget.dart';

class Encoming extends StatelessWidget {
  const Encoming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          PopularAnnouncements(image: AppImage.circle_avatar1, nameText: 'Хабиб Нурмагомедов ', bigText: "Хайрия учун зодлик билан, 10 туна ванна керак", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
          PopularAnnouncements(image: AppImage.circle_avatar2, nameText: 'Хабиб Нурмагомедов ', bigText: "150 тонна семерянка олмасини сотиб оламан махсулот жуда зарур", smalltext: "23 Yanvar, 2023.02.08"),
        ],
      ),
    );
  }
}
