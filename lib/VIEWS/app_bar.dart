import 'package:flutter/material.dart';

import '../WIDGETS/Appbars/app_bar_page_title.dart';
import '../WIDGETS/Appbars/appbar_with_image.dart';
import '../WIDGETS/Appbars/single_action_appbar.dart';
import '../WIDGETS/DrawerWidget/drawer_widget.dart';

class AppBarPage extends StatefulWidget {
  const AppBarPage({super.key});

  @override
  AppBarPageState createState() => AppBarPageState();
}

class AppBarPageState extends State<AppBarPage> {
  final Color textPrimaryColor = const Color(0xFF212121);
  final Color backgroundColor = Colors.green;
  late TextStyle style;

  FocusNode focusNode = FocusNode();
  bool isSearching = false;
  late Widget appBarTitle;

  Icon actionIcon = const Icon(
    Icons.search,
    color: Colors.white,
  );
  @override
  void initState() {
    super.initState();
    isSearching = false;
    style = TextStyle(color: textPrimaryColor);
    appBarTitle = Text("Search Toolbar", style: style);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Widget leadingWidget() {
      return BackButton(
        color: textPrimaryColor,
        onPressed: () {
          print('Back button');
        },
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My AppBar"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Wrap(
            runSpacing: 16,
            spacing: 8,
            direction: Axis.horizontal,
            children: [
              // Simple AppBar without actions and back button
              AppBar(
                title: Text('Without Back Button & Actions', style: style),
                backgroundColor: Colors.green,
                automaticallyImplyLeading: false,
              ),
              AppBar(
                title: Text('Center Title', style: style),
                // Center the title in AppBar with setting center title property to true.
                centerTitle: true,
                backgroundColor: Colors.pink,
                leading: leadingWidget(),
              ),
              AppBar(
                leading: leadingWidget(),
                title: Text('With Back Button', style: style),
                backgroundColor: Colors.purple,
              ),
              WithSingleActionAppbar(
                  style: style, textPrimaryColor: textPrimaryColor),
              appBarWithSearchToolBar(leadingWidget, context),
              AppBarWithPageTitle(
                  textPrimaryColor: textPrimaryColor, style: style),
              AppBarWithCustomImage(style: style),
            ],
          ),
        ),
        drawer: const CustomDrawer(),
      ),
    );
  }

  AppBar appBarWithSearchToolBar(
      Widget Function() leadingWidget, BuildContext context) {
    return AppBar(
      title: appBarTitle,
      leading: leadingWidget(),
      actions: [
        IconButton(
          icon: Icon(actionIcon.icon, color: textPrimaryColor),
          onPressed: () {
            if (actionIcon.icon == Icons.search) {
              actionIcon = Icon(Icons.close, color: textPrimaryColor);
              appBarTitle = TextField(
                focusNode: focusNode,
                onChanged: (value) {
                  setState(() {});
                },
                style: TextStyle(color: textPrimaryColor, fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: textPrimaryColor),
                  hintText: "Search",
                  hintStyle: TextStyle(
                      color: textPrimaryColor, fontWeight: FontWeight.normal),
                ),
              );
              setState(() {
                isSearching = true;
              });
            } else {
              setState(() {
                actionIcon = Icon(Icons.search, color: textPrimaryColor);
                appBarTitle = Text("Search Toolbar", style: style);
                isSearching = false;
              });
            }
            FocusScope.of(context).requestFocus(focusNode);
          },
        ),
      ],
      backgroundColor: Colors.blue,
    );
  }
}
