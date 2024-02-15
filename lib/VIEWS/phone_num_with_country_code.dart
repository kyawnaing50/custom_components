import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/PhoneNumber/phone_num_enter.dart';

import '../WIDGETS/DrawerWidget/drawer_widget.dart';
import '../WIDGETS/Responsive/my_responsive_schema.dart';

class MyCountryCodePage extends StatelessWidget {
  const MyCountryCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Containers",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PhoneTextWidget(),
          ],
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
