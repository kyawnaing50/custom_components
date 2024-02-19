import 'package:flutter/material.dart';
import '../../CONFIG/constant.dart';
import '../../WIDGETS/DrawerWidget/drawer_widget.dart';
import '../../WIDGETS/Responsive/my_responsive_schema.dart';

class ScrollTabbarPage extends StatelessWidget {
  const ScrollTabbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My ScrollTabBarPage",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: const ScrollTabBar(),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}

class ScrollTabBar extends StatefulWidget {
  static String tag = "/ScrollTabBar";

  const ScrollTabBar({super.key});

  @override
  ScrollTabBarState createState() => ScrollTabBarState();
}

class ScrollTabBarState extends State<ScrollTabBar> {
  TextStyle boldTextStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 24);

  @override
  void initState() {
    super.initState();
  }

  init() async {}

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 19,
        child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            backgroundColor: appStore.appBarColor,
            iconTheme: IconThemeData(color: appStore.iconColor),
            // title: Text(
            //   'Scrollable Tab',
            //   style: TextStyle(
            //       color: appStore.textPrimaryColor,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold),
            // ),
            bottom: TabBar(
              onTap: (index) {
                print(index);
              },
              isScrollable: true,
              labelStyle: boldTextStyle,
              indicatorColor: Colors.blue,
              unselectedLabelStyle: const TextStyle(fontSize: 16),
              tabs: [
                Tab(child: TabList(title: 'Home')),
                Tab(child: TabList(title: 'MarketPlace')),
                Tab(child: TabList(title: 'Group')),
                Tab(child: TabList(title: 'Watch')),
                Tab(child: TabList(title: 'Notifications')),
                Tab(child: TabList(title: 'Menu')),
                Tab(child: TabList(title: 'Profile')),
                Tab(child: TabList(title: 'Setting')),
                Tab(child: TabList(title: 'Message')),
                Tab(child: TabList(title: 'Call')),
                Tab(child: TabList(title: 'Library')),
                Tab(child: TabList(title: 'Category')),
                Tab(child: TabList(title: 'Cart')),
                Tab(child: TabList(title: 'Wishlist')),
                Tab(child: TabList(title: 'Order')),
                Tab(child: TabList(title: 'Report')),
                Tab(child: TabList(title: 'Favourite')),
                Tab(child: TabList(title: 'Wallet')),
                Tab(child: TabList(title: 'Settings')),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              mTabContent("Home"),
              mTabContent("MarketPlace"),
              mTabContent("Group"),
              mTabContent("Watch"),
              mTabContent("Notifications"),
              mTabContent("Menu"),
              mTabContent("Profile"),
              mTabContent("Setting"),
              mTabContent("Message"),
              mTabContent("Call"),
              mTabContent("Library"),
              mTabContent("Category"),
              mTabContent("Cart"),
              mTabContent("Wishlist"),
              mTabContent("Order"),
              mTabContent("Report"),
              mTabContent("Favourite"),
              mTabContent("Wallet"),
              mTabContent("Settings"),
            ],
          ),
        ),
      ),
    );
  }

  Widget mTabContent(String title) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      width: width,
      child: Text(title, style: const TextStyle(fontSize: 24)),
    );
  }

  // ignore: non_constant_identifier_names
  Widget TabList({Widget? icon, required String title}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        icon ?? const SizedBox(),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: TextStyle(color: appStore.textPrimaryColor),
        ),
      ],
    );
  }
}
