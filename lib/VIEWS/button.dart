import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';

import '../WIDGETS/Buttons/raw_matrial_button.dart';
import '../WIDGETS/DrawerWidget/drawer_widget.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Buttons",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Text Button",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Elevated Button",
                style: TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sms_failed,
                color: Colors.blue,
                size: 40,
              ),
            ),

            //------------For Ripple Effect--------//
            MaterialButton(
              onPressed: () {},
              child: Text("Hello Material Button"),
            ),
            const MyRawMaterialButton(),
            BackButton(
              onPressed: () {},
            ),
            CloseButton(
              onPressed: () {},
            )
          ],
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
