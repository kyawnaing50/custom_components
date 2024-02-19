import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../CONFIG/constant.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';
import '../WIDGETS/DrawerWidget/drawer_widget.dart';

class MyDrawerPage extends StatelessWidget {
  const MyDrawerPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Drawer",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: const MyDrawer(),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}

class MyDrawer extends StatefulWidget {
  static String tag = '/myDrawer';

  const MyDrawer({super.key});

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  TextStyle primaryTextStyle = const TextStyle(
      fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16);

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 1));
    scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      // appBar: AppBar(
      //   backgroundColor: appStore.appBarColor,
      //   title: Text('With Custom Shape',
      //       style: TextStyle(color: appStore.textPrimaryColor, fontSize: 22)),
      //   automaticallyImplyLeading: false,
      //   leading: IconButton(
      //     icon: Icon(Icons.menu, color: appStore.iconColor),
      //     onPressed: () {
      //       scaffoldKey.currentState!.openDrawer();
      //     },
      //   ),
      // ),
      drawer: ClipPath(
        clipper: OvalRightBorderClipper(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Drawer(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 40),
            decoration: BoxDecoration(
              color: appStore.appBarColor,
            ),
            width: 300,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(8),
                      child: IconButton(
                        icon: Icon(
                          Icons.power_settings_new,
                          color: appStore.textPrimaryColor,
                        ),
                        onPressed: () {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.orange),
                        image: const DecorationImage(
                            image: CachedNetworkImageProvider(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTD8u1Nmrk78DSX0v2i_wTgS6tW5yvHSD7o6g&usqp=CAU')),
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Text(
                      "John Dow",
                      style: TextStyle(
                          color: appStore.textPrimaryColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text("JohnDoe@gmail.com",
                        style: TextStyle(
                            color: appStore.textPrimaryColor, fontSize: 16.0)),
                    const SizedBox(
                      height: 30,
                    ),
                    itemList(
                        Icon(Icons.home, color: appStore.iconColor), "Home"),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    itemList(Icon(Icons.person_pin, color: appStore.iconColor),
                        "My profile"),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    itemList(Icon(Icons.message, color: appStore.iconColor),
                        "Messages"),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    itemList(
                        Icon(Icons.notifications, color: appStore.iconColor),
                        "Notifications"),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    itemList(Icon(Icons.settings, color: appStore.iconColor),
                        "Settings"),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    itemList(Icon(Icons.email, color: appStore.iconColor),
                        "Contact us"),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                    itemList(
                        Icon(Icons.info_outline, color: appStore.iconColor),
                        "Help"),
                    const Divider(),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          padding: const EdgeInsets.all(16),
          color: appStore.textPrimaryColor,
          child: Text('Open Drawer', style: primaryTextStyle),
        ),
      ),
    );
  }

  Widget itemList(Widget icon, String title) {
    return GestureDetector(
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(title, style: TextStyle(color: appStore.textPrimaryColor)),
        ],
      ),
      onTap: () {
        scaffoldKey.currentState!.openEndDrawer();
        debugPrint(title);
      },
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 50, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
