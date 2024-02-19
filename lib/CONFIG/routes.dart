import 'package:get/get.dart';
import 'package:my_components/VIEWS/BottonNavigationBar/bottom_navi_2.dart';
import 'package:my_components/VIEWS/BottonNavigationBar/bottom_navi_3.dart';
import 'package:my_components/VIEWS/Stepper/vertical_stepper.dart';
import 'package:my_components/VIEWS/TabBar/scroll_tabar.dart';
import 'package:my_components/VIEWS/TabBar/simple_tabar.dart';
import 'package:my_components/VIEWS/app_bar.dart';
import 'package:my_components/VIEWS/button.dart';
import 'package:my_components/VIEWS/container.dart';
import 'package:my_components/VIEWS/drawer.dart';
import 'package:my_components/VIEWS/text_form_field.dart';
import '../BINDING/binding.dart';
import '../VIEWS/BottonNavigationBar/with_icon_label.dart';
import '../VIEWS/phone_num_with_country_code.dart';
import '../VIEWS/radiobutton.dart';
import '../WIDGETS/pinput.dart';
import 'route_config.dart';

List<GetPage> route = [
 
  GetPage(
    name: Routes.home,
    page: () => const OTPPage(),
    binding: HomeBinding(),
  ),
  GetPage(name: Routes.button, page: () => const ButtonPage(title: 'button')),
  GetPage(name: Routes.container, page: () => const ContainaerPage()),
  GetPage(name: Routes.radio, page: () => const RadiobuttonPage()),
  GetPage(name: Routes.phone, page: () => MyCountryCodePage()),
  GetPage(name: Routes.text, page: () => const MyTextFormPage()),
  GetPage(name: Routes.appbar, page: () => const AppBarPage()),
  GetPage(name: Routes.bottomNavigation, page: () => const BottomNaviOne()),
  GetPage(name: Routes.bottomNavi2, page: () => const BottomNavi2()),
  GetPage(name: Routes.bottomNavi3, page: () => const BottomNavi3()), //OTPPage
  GetPage(
      name: Routes.myDrawer,
      page: () => const MyDrawerPage(
            title: 'My Drawer',
          )),
  GetPage(
      name: Routes.verticalStepper, page: () => const VerticalStepperPage()),
  GetPage(
      name: Routes.simpleTab,
      page: () => const SimpleTabBarPage(
            title: 'Simple TabBar',
          )),
  GetPage(name: Routes.scrollTabar, page: () => const ScrollTabbarPage()), 
];
