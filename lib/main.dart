import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CONFIG/route_config.dart';
import 'CONFIG/routes.dart';
import 'VIEWS/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Components",
      initialRoute: Routes.home,
      getPages: route,
    );
  }
}
