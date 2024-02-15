import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';

import '../WIDGETS/DrawerWidget/drawer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MyResponsiveSchema(
        desktop: Container(
          child: Text("Hello Home"),
        ),
        tablet: Container(),
        mobile: Container(
          child: Text("Hello Home"),
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
