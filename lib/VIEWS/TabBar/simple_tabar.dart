import 'package:flutter/material.dart';

import '../../CONFIG/constant.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';

import '../../WIDGETS/DrawerWidget/drawer_widget.dart';

class SimpleTabBarPage extends StatelessWidget {
  const SimpleTabBarPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My SimpleTabBar",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: const SimpleTabbar(),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}

class SimpleTabbar extends StatefulWidget {
  static String tag = "/DemoMWTabBarScreen1";

  const SimpleTabbar({super.key});

  @override
  SimpleTabbarState createState() => SimpleTabbarState();
}

class SimpleTabbarState extends State<SimpleTabbar> {
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
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            backgroundColor: appStore.appBarColor,
            //iconTheme: IconThemeData(color: appStore.iconColor),
            // title: Text(
            //   'Simple TabBar',
            //   style: TextStyle(
            //       color: appStore.textPrimaryColor,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold),
            // ),
            bottom: TabBar(
              onTap: (index) {
                print(index);
              },
              indicatorColor: Colors.blue,
              labelColor: appStore.textPrimaryColor,
              labelStyle: boldTextStyle,
              tabs: const [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Articles",
                ),
                Tab(
                  text: "User",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                          color: appStore.textPrimaryColor, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Articles',
                      style: TextStyle(
                          color: appStore.textPrimaryColor, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'User',
                      style: TextStyle(
                          color: appStore.textPrimaryColor, fontSize: 24),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
