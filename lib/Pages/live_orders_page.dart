import 'package:flutter/material.dart';
import 'package:kitchen_operations/Pages/import_all_pages.dart';

class LiveOrdersPage extends StatefulWidget {
  const LiveOrdersPage({super.key});

  @override
  State<LiveOrdersPage> createState() => LiveOrdersPageState();
}

class LiveOrdersPageState extends State<LiveOrdersPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 63,
                  child: Container(
                    height: 3,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                TabBar(
                  controller: tabController,
                  padding: EdgeInsets.only(left: 41, right: 41, top: 20),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: UnderlineTabIndicator(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 3.0,
                      color: Color(0xFF000000),
                    ),
                  ),
                  indicatorPadding: tabController.index == 0
                      ? EdgeInsets.only(left: 20, right: 0)
                      : EdgeInsets.only(left: 0, right: 20),
                  labelPadding: EdgeInsets.only(bottom: 12),
                  dividerColor: Colors.transparent,
                  labelStyle: TextStyle(
                    fontFamily: "PlusJakartaSans-Regular",
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontFamily: "PlusJakartaSans-Regular",
                    color: Color(0xFF1D1929),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                    letterSpacing: 0,
                  ),
                  tabs: [
                    Container(
                      alignment: Alignment.center,
                      child: Text("Running Orders"),
                    ),
                    Text("Ala Carte Menu"),
                  ],
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [RunningOrdersPage(), AlaCarteMenuPage()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
