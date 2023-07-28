import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class TabBarWidgets extends StatelessWidget {

  TabController tabController;

   TabBarWidgets({Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16, left: 16),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(1, 0),
            color: grey2.withOpacity(0.2),
          ),
          BoxShadow(
            offset: Offset(0, 1),
            color: grey4..withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(-1, 0),
            color: grey4..withOpacity(0.2),
          ),
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0, -1),
            color: grey4..withOpacity(0.2),
          ),
        ],
      ),
      child: TabBar(
        controller: tabController,
        // give the indicator a decoration (color and border radius)
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: white,
          boxShadow: [
            BoxShadow(
              color: white,
              blurRadius: 1.0,
              offset: Offset(1, 1),
            ),
            BoxShadow(
              color: white,
              offset: Offset(-1, 0),
            ),
            BoxShadow(
              color: white,
              offset: Offset(1, 0),
            ),
            BoxShadow(
              color: white,
              offset: Offset(0, -1),
            ),
          ],
        ),
        labelColor: mainDark,
        unselectedLabelColor: mainDark,
        tabs: [
          Tab(
            text: 'Телефон рақами',
          ),
          Tab(
            text: 'Электрон почта',
          ),
        ],
      ),
    );

  }
}
