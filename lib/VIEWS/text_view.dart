import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';

import '../WIDGETS/DrawerWidget/drawer_widget.dart';

class TextBoxPage extends StatelessWidget {
  const TextBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: MyResponsiveSchema(
        mobile: Container(
          child: Text("Hello Text"),
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
