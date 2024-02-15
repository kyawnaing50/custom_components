import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';

import '../WIDGETS/DrawerWidget/drawer_widget.dart';

class RadiobuttonPage extends StatelessWidget {
  const RadiobuttonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MyResponsiveSchema(
        mobile: Container(
          child: Text("Hello Radio"),
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
