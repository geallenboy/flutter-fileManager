import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/assets/colors/colors.dart';

class TabBarWidget extends StatefulWidget {
  TabController tabController;

   TabBarWidget({Key? key,
    required this.tabController,
  }) : super(key: key);



  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}


class _TabBarWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin{

  bool isLoading = true;

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          // give the tab bar a height [can change hheight to preferred height]
          Container(
            margin: EdgeInsets.only(right: 16, left: 16),
            height: 45,
            decoration: BoxDecoration(
              color: grey4,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: white,
                    blurRadius: 5.0,
                    offset: Offset(5, 5),
                  ),
                  BoxShadow(
                    color: white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              labelColor: mainDark,
              unselectedLabelColor:  mainDark,
              tabs: [
                Tab(
                  text: 'Place Bid',
                ),
                Tab(
                  text: 'Buy Now',
                ),
              ],
            ),
          ),
          // tab bar view here
        ],
      ),
    );
  }
}
