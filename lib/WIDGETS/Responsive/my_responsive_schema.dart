import 'package:flutter/material.dart';

class MyResponsiveSchema extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const MyResponsiveSchema(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  static isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 767;
  }

  static isTable(BuildContext context) {
    return MediaQuery.of(context).size.width > 767 &&
        MediaQuery.of(context).size.width < 1024;
  }

  static isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 1024;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraist) {
      if (constraist.maxWidth > 1024) {
        return desktop;
      } else if (constraist.maxWidth > 767 && constraist.maxWidth < 1023) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
