import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/DrawerWidget/drawer_widget.dart';

import '../../CONFIG/constant.dart';

class BottomNavi2 extends StatefulWidget {
  const BottomNavi2({Key? key}) : super(key: key);

  @override
  BottomNavi2State createState() => BottomNavi2State();
}

class BottomNavi2State extends State<BottomNavi2> {
  List<IconData> navbarIcons = [
    Icons.home,
    Icons.search,
    Icons.add_box,
    Icons.favorite,
    Icons.account_circle
  ];
  List widgets = <Widget>[
    const Center(
        child: Text("Home View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    const Center(
        child: Text("Search View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    const Center(
        child: Text("Gallery View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    const Center(
        child: Text("Favorite View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    const Center(
        child: Text("Profile View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
  ];

  List<String> bottomNavigationName = [
    'Home',
    'Search',
    'Gallery',
    'Favorite',
    'Profile'
  ];

  List<Color> color = [
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.green
  ];

  List<Color> colorShade = [
    Colors.blue.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
    Colors.red.shade100,
    Colors.green.shade100
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: widgets[selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 16, left: 12, right: 12, top: 8),
        height: 70,
        decoration: BoxDecoration(color: appStore.cardColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navbarIcons.map(
            (e) {
              int i = navbarIcons.indexOf(e);
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                padding: const EdgeInsets.all(8),
                height: 45,
                decoration: BoxDecoration(
                  color:
                      i == selectedIndex ? colorShade[i] : appStore.cardColor,
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                        child: Icon(
                          e,
                          size: 30,
                          color: i == selectedIndex
                              ? color[i]
                              : Colors.blueGrey[300],
                        ),
                        onTap: () {
                          selectedIndex = i;
                          setState(
                            () {},
                          );
                        }),
                    (i == selectedIndex)
                        ? Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(bottomNavigationName[i],
                                style: TextStyle(
                                    color: color[i],
                                    fontWeight: FontWeight.bold)))
                        : Container(),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
