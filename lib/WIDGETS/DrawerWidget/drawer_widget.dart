import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../CONFIG/route_config.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          buildDrawerHeader(),
          buildDrawerItem(
            icon: Icons.photo,
            text: "Get OTP",
            onTap: () {
              navigate(0);
            }, //=> navigate(0),
            tileColor: Get.currentRoute == Routes.home ? Colors.blue : null,
            textIconColor:
                Get.currentRoute == Routes.home ? Colors.white : Colors.black,
          ),
          buildDrawerItem(
            icon: Icons.video_call,
            text: "button",
            onTap: () {
              navigate(1);
              // Get.toNamed(Routes.button);
            },
            tileColor: Get.currentRoute == Routes.button ? Colors.blue : null,
            textIconColor:
                Get.currentRoute == Routes.button ? Colors.white : Colors.black,
          ),
          buildDrawerItem(
              icon: Icons.chat,
              text: "container",
              onTap: () {
                navigate(2);
              },
              tileColor:
                  Get.currentRoute == Routes.container ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.container
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "text",
              onTap: () {
                navigate(3);
              },
              tileColor: Get.currentRoute == Routes.text ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.text
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "Radio",
              onTap: () {
                navigate(4);
              },
              tileColor: Get.currentRoute == Routes.radio ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.radio
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "Country Code",
              onTap: () {
                navigate(5);
              },
              tileColor: Get.currentRoute == Routes.phone ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.phone
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "My App Bar",
              onTap: () {
                navigate(6);
              },
              tileColor: Get.currentRoute == Routes.appbar ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.appbar
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "BottomNavi 1",
              onTap: () {
                navigate(7);
              },
              tileColor: Get.currentRoute == Routes.bottomNavigation
                  ? Colors.blue
                  : null,
              textIconColor: Get.currentRoute == Routes.bottomNavigation
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "BottomNavi 2",
              onTap: () {
                navigate(8);
              },
              tileColor:
                  Get.currentRoute == Routes.bottomNavi2 ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.bottomNavi2
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "BottomNavi 3",
              onTap: () {
                navigate(9);
              },
              tileColor:
                  Get.currentRoute == Routes.bottomNavi3 ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.bottomNavi3
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "My Drawer",
              onTap: () {
                navigate(10);
              },
              tileColor:
                  Get.currentRoute == Routes.myDrawer ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.myDrawer
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "Vertical Stepper",
              onTap: () {
                navigate(11);
              },
              tileColor: Get.currentRoute == Routes.verticalStepper
                  ? Colors.blue
                  : null,
              textIconColor: Get.currentRoute == Routes.verticalStepper
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "Simple Tabbar",
              onTap: () {
                navigate(12);
              },
              tileColor:
                  Get.currentRoute == Routes.simpleTab ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.simpleTab
                  ? Colors.white
                  : Colors.black),
          buildDrawerItem(
              icon: Icons.chat,
              text: "Scroll Tabbar",
              onTap: () {
                navigate(13);
              },
              tileColor:
                  Get.currentRoute == Routes.scrollTabar ? Colors.blue : null,
              textIconColor: Get.currentRoute == Routes.scrollTabar
                  ? Colors.white
                  : Colors.black),
        ],
      ),
    );
  }

  Widget buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text("Kyaw Naing"),
      accountEmail: Text("nainkyawmyat@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/images/google1.png'),
          ),
      currentAccountPictureSize: Size.square(72),
      // otherAccountsPictures: [
      //   CircleAvatar(
      //     backgroundColor: Colors.white,
      //     child: Text("RC"),
      //   )
      // ],
      // otherAccountsPicturesSize: Size.square(50),
    );
  }

  Widget buildDrawerItem({
    required String text,
    required IconData icon,
    required Color textIconColor,
    required Color? tileColor,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: textIconColor),
      title: Text(
        text,
        style: TextStyle(color: textIconColor),
      ),
      tileColor: tileColor,
      onTap: onTap,
    );
  }

  navigate(int index) {
    if (index == 0) {
      Get.toNamed(Routes.home);
    } else if (index == 1) {
      Get.toNamed(Routes.button);
    }
    if (index == 2) {
      Get.toNamed(Routes.container);
    }
    if (index == 3) {
      Get.toNamed(Routes.text);
    }
    if (index == 4) {
      Get.toNamed(Routes.radio);
    }
    if (index == 5) {
      Get.toNamed(Routes.phone);
    }
    if (index == 6) {
      Get.toNamed(Routes.appbar);
    }
    if (index == 7) {
      Get.toNamed(Routes.bottomNavigation);
    }
    if (index == 8) {
      Get.toNamed(Routes.bottomNavi2);
    }
    if (index == 9) {
      Get.toNamed(Routes.bottomNavi3);
    }
    if (index == 10) {
      Get.toNamed(Routes.myDrawer);
    }
    if (index == 11) {
      Get.toNamed(Routes.verticalStepper);
    }
    if (index == 12) {
      Get.toNamed(Routes.simpleTab);
    }
    if (index == 13) {
      Get.toNamed(Routes.scrollTabar);
    }
  }
}
