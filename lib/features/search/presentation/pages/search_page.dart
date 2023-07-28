import 'package:flutter/material.dart';
import 'package:shirin_meva_demo_ui/features/auth/presentations/widgets/tab_bar_widget.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/appBar_container_widget.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/horizontal_recomendation_widget.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/popular_encoming_widget.dart';
import 'package:shirin_meva_demo_ui/features/search/presentation/widgets/row_search_and_setting_widget.dart';

class SeachPage extends StatefulWidget {
  const SeachPage({Key? key}) : super(key: key);

  @override
  State<SeachPage> createState() => _SeachPageState();
}

class _SeachPageState extends State<SeachPage>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Column(
        children: [
        AppBarContainerWidget(
          child: Column(
            children: [
              SizedBox(height: 30),
              RowSearchAndSetting(),
              TabBarWidgets(tabController: _tabController),
            ],
          ),
        ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                VerticalScrollContainer(),
                Encoming(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
