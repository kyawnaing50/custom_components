import 'package:flutter/material.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_schema.dart';

import '../WIDGETS/Buttons/custom_button.dart';
import '../WIDGETS/Buttons/elevate_button.dart';
import '../WIDGETS/Buttons/raw_matrial_button.dart';
import '../WIDGETS/Buttons/text_button.dart';
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const MyTextButton(),
            const MyElevatedButton(),
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
              child: const Text(
                "Hello Material Button",
                style: TextStyle(),
              ),
            ),
            const MyRawMaterialButton(),

            //----------Back Button------//
            BackButton(
              onPressed: () {},
            ),
            //---------Close Button----------//
            CloseButton(
              onPressed: () {},
            ),
            CustomButtom(
                btnColor: Colors.blue,
                borderRadius: 16,
                textColor: Colors.white,
                btnText: "Next",
                leftIcon: null,
                rightIcon: null,
                voidCall: () {},
                leftIconSize: null,
                rightIconSize: null),
          ],
        ),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}




