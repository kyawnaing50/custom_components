import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../CONFIG/constant.dart';
import '../../WIDGETS/DrawerWidget/drawer_widget.dart';
import '../../WIDGETS/Responsive/my_responsive_schema.dart'; //https://pub.dev/packages/nb_utils

class VerticalStepperPage extends StatelessWidget {
  const VerticalStepperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Vertical Stepper",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: MyResponsiveSchema(
        mobile: const VerticalStepper(),
        tablet: Container(),
        desktop: Container(),
      ),
      drawer: const CustomDrawer(),
    );
  }
}

class VerticalStepper extends StatefulWidget {
  static const tag = '/DemoMWStepperScreen2';

  const VerticalStepper({super.key});

  @override
  VerticalStepperState createState() => VerticalStepperState();
}

class VerticalStepperState extends State<VerticalStepper> {
  int currStep = 0;

  @override
  Widget build(BuildContext context) {
    List<Step> steps = [
      Step(
        title: Text("Contact Detail",
            style: boldTextStyle(color: appStore.textPrimaryColor)),
        subtitle: Text("Add Contact Detail",
            style:
                primaryTextStyle(color: appStore.textPrimaryColor, size: 14)),
        isActive: currStep == 0,
        content: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: secondaryTextStyle(color: appStore.textSecondaryColor)),
      ),
      Step(
        title: Text("Shipping Information",
            style: boldTextStyle(color: appStore.textPrimaryColor)),
        subtitle: Text("Add Shipping Information",
            style:
                primaryTextStyle(color: appStore.textPrimaryColor, size: 14)),
        content: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: secondaryTextStyle(color: appStore.textSecondaryColor)),
        isActive: currStep == 1,
      ),
      Step(
        title: Text("Billing Address",
            style: boldTextStyle(color: appStore.textPrimaryColor)),
        subtitle: Text("Added Billing Address",
            style:
                primaryTextStyle(color: appStore.textPrimaryColor, size: 14)),
        content: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: secondaryTextStyle(color: appStore.textSecondaryColor)),
        isActive: currStep == 2,
      ),
      Step(
        title: Text("Payment Flow",
            style: boldTextStyle(color: appStore.textPrimaryColor)),
        subtitle: Text("Select Payment method",
            style:
                primaryTextStyle(color: appStore.textPrimaryColor, size: 14)),
        content: Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            style: secondaryTextStyle(color: appStore.textSecondaryColor)),
        isActive: currStep == 3,
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: Theme(
          data: ThemeData(backgroundColor: context.scaffoldBackgroundColor),
          child: Stepper(
            steps: steps,
            physics: const BouncingScrollPhysics(),
            type: StepperType.vertical,
            currentStep: currStep,
            controlsBuilder: (BuildContext context, ControlsDetails controls) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                    onPressed: controls.onStepContinue,
                    child: Text('CONTINUE', style: secondaryTextStyle()),
                  ),
                  10.width,
                  TextButton(
                    onPressed: controls.onStepCancel,
                    child: Text('CANCEL', style: secondaryTextStyle()),
                  ),
                ],
              );
            },
            onStepContinue: () {
              setState(() {
                if (currStep < steps.length - 1) {
                  currStep = currStep + 1;
                } else {
                  //currStep = 0;
                  finish(context);
                }
              });
            },
            onStepCancel: () {
              finish(context);
              setState(() {
                if (currStep > 0) {
                  currStep = currStep - 1;
                } else {
                  currStep = 0;
                }
              });
            },
            onStepTapped: (step) {
              setState(() {
                currStep = step;
              });
            },
          ),
        ),
      ),
    );
  }
}
