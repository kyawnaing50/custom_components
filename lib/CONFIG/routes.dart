import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_components/VIEWS/button.dart';
import 'package:my_components/VIEWS/container.dart';
import 'package:my_components/VIEWS/home.dart';
import 'package:my_components/WIDGETS/Responsive/my_responsive_layout.dart';

import '../BINDING/binding.dart';
import '../VIEWS/radiobutton.dart';
import '../VIEWS/text_view.dart';
import 'route_config.dart';

List<GetPage> route = [
  //GetPage(
  // name: Routes.responsive,
  // page: () => const MyResponsiveLayout(),
  // binding: HomeBinding(),
  //),
  GetPage(
    name: Routes.home,
    page: () => const HomePage(title: 'Home'),
    binding: HomeBinding(),
  ),
  GetPage(
    name: Routes.button,
    page: () => const ButtonPage(title: 'button'),
  ),
  GetPage(
    name: Routes.container,
    page: () => const ContainaerPage(),
  ),
  GetPage(
    name: Routes.radio,
    page: () => const RadiobuttonPage(),
  ),
  GetPage(
    name: Routes.text,
    page: () => const TextBoxPage(),
  ),
];
