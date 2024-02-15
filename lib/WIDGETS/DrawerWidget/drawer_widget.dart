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
            text: "home",
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
        ],
      ),
    );
  }

  Widget buildDrawerHeader() {
    return const UserAccountsDrawerHeader(
      accountName: Text("Kyaw Naing"),
      accountEmail: Text("nainkyawmyat@gmail.com"),
      currentAccountPicture: CircleAvatar(
          // backgroundImage: AssetImage('image/logo.jpg'),
          ),
      currentAccountPictureSize: Size.square(72),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Text("RC"),
        )
      ],
      otherAccountsPicturesSize: Size.square(50),
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
  }
}
