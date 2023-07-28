import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';
import 'package:shirin_meva_demo_ui/assets/constants/images.dart';
import 'package:shirin_meva_demo_ui/features/cart/presentations/pages/cart_page.dart.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/app_bar_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/app_column_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/banner_widgets.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/big_text_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/catagory_container_widgets.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/fruit_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/horizontal_company_list_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/horizontal_recomendation_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/popular_company_widget.dart';
import 'package:shirin_meva_demo_ui/features/home/presentations/widgets/popular_encoming_widget.dart';


class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: white,
      body: Column(
        children: [
          AppBarWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BannerWidget(),
                  SizedBox(height: 20),
                  PopularCompanyTextWidget(companyName: "Машҳур компаниялар", text: "Барчаси"),
                  SizedBox(height: 20),
                  HorizonTalCompanyList(),
                  SizedBox(height: 20),
                  PopularCompanyTextWidget(companyName: "Елонлар катагориясы ", text: "Барчаси"),
                  SizedBox(height: 20),
                  FruitWidget(),
                  SizedBox(height: 20),
                  PopularCompanyTextWidget(companyName: "Тавсия этилган", text: "Барчаси"),
                  SizedBox(height: 20),
                  RecomendationHorizontalWidget(),
                  SizedBox(height: 20,),
                  PopularCompanyTextWidget(companyName: "Машхур элонлар", text: "Барчаси"),
                  SizedBox(height: 10),
                  ListAnoounnce(),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
