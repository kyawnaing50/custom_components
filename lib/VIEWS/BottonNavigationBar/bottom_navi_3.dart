import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/DrawerWidget/drawer_widget.dart';

import '../../CONFIG/constant.dart';

class BottomNavi3 extends StatefulWidget {
  const BottomNavi3({Key? key}) : super(key: key);

  @override
  BottomNavi3State createState() => BottomNavi3State();
}

class BottomNavi3State extends State<BottomNavi3> {
  List<SampleListModel> SampleData = [];

  int selectedIndex = 0;

  @override
  void initState() {
    SampleData.add(
      SampleListModel(
        title: "Home",
        launchWidget: const Text("Home View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        icon: Icons.home,
        alternateIcon: Icons.home_outlined,
        colors: Colors.blue,
      ),
    );
    SampleData.add(
      SampleListModel(
        title: "Search",
        launchWidget: const Text("Search View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        icon: Icons.search,
        alternateIcon: Icons.search,
        colors: Colors.orange,
      ),
    );
    SampleData.add(
      SampleListModel(
        title: "Favorite",
        launchWidget: const Text("Favorite View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        icon: Icons.favorite,
        alternateIcon: Icons.favorite_outline,
        colors: Colors.red,
      ),
    );
    SampleData.add(
      SampleListModel(
        title: "Profile",
        launchWidget: const Text("Profile View",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        icon: Icons.account_circle,
        alternateIcon: Icons.account_circle_outlined,
        colors: Colors.purple,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navi 3"),
        centerTitle: true,
      ),
      body: Center(child: SampleData[selectedIndex].launchWidget),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appStore.backgroundColor,
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          debugPrint("Hurray");
          setState(() {});
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 117,
        color: appStore.cardColor,
        clipBehavior: Clip.hardEdge,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 1),
          child: Row(
            children: [
              ...List.generate(
                SampleData.length,
                (index) {
                  SampleListModel data = SampleData[index];
                  return Expanded(
                    child: GestureDetector(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          selectedIndex == index
                              ? Icon(data.icon, size: 40, color: data.colors)
                              : Icon(data.alternateIcon,
                                  size: 40, color: Colors.blueGrey[300]),
                          Text(selectedIndex == index ? data.title ?? "" : "",
                              style:
                                  TextStyle(color: data.colors, fontSize: 14)),
                        ],
                      ),
                      onTap: () {
                        selectedIndex = index;
                        setState(() {});
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}

class SampleListModel {
  Widget? leading;
  String? title;
  String? subTitle;
  Widget? trailing;
  IconData? icon;
  IconData? alternateIcon;
  Function? onTap;
  Color? colors;
  Widget? launchWidget;

  SampleListModel(
      {this.leading,
      this.title,
      this.subTitle,
      this.colors,
      this.icon,
      this.alternateIcon,
      this.trailing,
      this.onTap,
      this.launchWidget});
}
