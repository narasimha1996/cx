import 'package:flutter/material.dart';
import 'package:food_delivery_app/common_ui/profile_icon_container.dart';
import 'package:food_delivery_app/screen_ui/favourite.dart';
import 'package:food_delivery_app/screen_ui/home.dart';
import 'package:food_delivery_app/utlis/localization.dart/constants.dart';
import 'package:food_delivery_app/utlis/localization.dart/local_fonts.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({Key? key}) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  bool isloading = true;
  List<Widget> listWidgets = [];

  List<Tab> listOfTabs = [
    const Tab(
      icon: Icon(Icons.person_pin),
      text: 'Home',
    ),
    const Tab(
      icon: Icon(Icons.person_pin),
      text: 'Filters',
    ),
    const Tab(
      icon: Icon(Icons.person_pin),
      text: 'Favourite',
    )
  ];

  @override
  void initState() {
    listWidgets = [
      const HomeScreen(),
      const HomeScreen(),
      const Fav(),
    ];

    super.initState();
    controller = TabController(
      length: 3,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          strHomeAppBar,
          style: grfwbsn_20g,
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.green,
        ),
        actions: [
          Padding(padding: const EdgeInsets.all(10.0), child: boxCir_40)
        ],
      ),
      body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: listWidgets),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Divider(
              height: 1,
              color: Colors.black,
            ),
            TabBar(
              indicatorColor: Colors.green,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              tabs: listOfTabs,
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
