import 'package:flutter/material.dart';
import '../home/home_page.dart';
import './bubble_tab_indicator.dart';
import '../homeLive/home_live.dart';
import '../../model/action_type.dart';

class TabbarInsideAppBar extends StatefulWidget {
  @override
  _TabbarInsideAppBarState createState() => _TabbarInsideAppBarState();
}

class _TabbarInsideAppBarState extends State<TabbarInsideAppBar> with SingleTickerProviderStateMixin {
  TabController tabController;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget getTabBar() {
    return TabBar(controller: tabController, isScrollable: true, tabs: <Widget>[
      Tab(text: 'Live',),
      Tab(text: 'Lich Phat Song'),
      Tab(text: 'Xem lai')
    ],
    indicator: new BubbleTabIndicator(
      indicatorHeight: 25.0,
      indicatorColor: Colors.greenAccent,
      tabBarIndicatorSize: TabBarIndicatorSize.tab,
    ),);
  }

  Widget getTabBarPages() {
    return TabBarView(controller: tabController, children: <Widget>[
      new HomeLive(ActionType.GetLive),
      Container(color: Colors.red,),
      new HomePage()
    ]);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
      title: getTabBar(),
      leading: IconButton(icon: Icon(Icons.menu), color: Colors.white, onPressed: () {_scaffoldKey.currentState.openDrawer();},),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.supervised_user_circle), onPressed: () {
          print("hello");
        },),
      ],
      
    ),
    drawer: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Menu"),
            decoration: BoxDecoration(
              color: Colors.blueAccent
            ),
          )
        ],
      ),
    ),
    body: getTabBarPages(),);
  }

}