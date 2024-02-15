import 'package:get/get.dart';
import 'package:my_components/VIEWS/BottonNavigationBar/bottom_navi_2.dart';
import 'package:my_components/VIEWS/BottonNavigationBar/bottom_navi_3.dart';
import 'package:my_components/VIEWS/app_bar.dart';
import 'package:my_components/VIEWS/button.dart';
import 'package:my_components/VIEWS/container.dart';
import 'package:my_components/VIEWS/home.dart';
import 'package:my_components/VIEWS/text_form_field.dart';
import '../BINDING/binding.dart';
import '../VIEWS/BottonNavigationBar/with_icon_label.dart';
import '../VIEWS/phone_num_with_country_code.dart';
import '../VIEWS/radiobutton.dart';
import 'route_config.dart';

List<GetPage> route = [
 
  GetPage(
    name: Routes.home,
    page: () => const HomePage(title: 'Home'),
    binding: HomeBinding(),
  ),
  GetPage(name: Routes.button, page: () => const ButtonPage(title: 'button')),
  GetPage(name: Routes.container, page: () => const ContainaerPage()),
  GetPage(name: Routes.radio, page: () => const RadiobuttonPage()),
  GetPage(name: Routes.phone, page: () => const MyCountryCodePage()),
  GetPage(name: Routes.text, page: () => const MyTextFormPage()),
  GetPage(name: Routes.appbar, page: () => const AppBarPage()),
  GetPage(name: Routes.bottomNavigation, page: () => const BottomNaviOne()),
  GetPage(name: Routes.bottomNavi2, page: () => const BottomNavi2()),
  GetPage(name: Routes.bottomNavi3, page: () => const BottomNavi3()),
];
