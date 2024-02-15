import 'package:flutter/material.dart';
import 'package:my_components/VIEWS/home.dart';

class TechLearnRoutes {
  static const splash = '/splash';
  static const home = '/home';
  static const login = '/login';
  static const welcome = '/welcome';
  static const interact = '/interact';
  static const online = '/online';
  static const onboarding = '/onboarding';
  static const choose = '/choose';
  static const phoneNumber = '/phoneNumber';
  static const login1 = '/login1';
  static const otp = '/otp';
  static const regOne = '/regOne';
  static const avatar = '/avatar';
  static const subjectdetail = '/subjectDetail'; //addClassRoom
  static const createClassRoom = '/createClassRoom'; //addClassRoom
  static const testingPage = '/testingPage'; //addClassRoom
  static const busyPasscode = '/busyPasscode'; //addClassRoom

  static Route generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // case login:
      //   return _getRoute(const LoginPage(), settings);
      case home:
        return _getRoute(const HomePage(title: "Home"), settings);
      // case onboarding:
      //   return _getRoute(const OnboardingPage(), settings);
      // case choose:
      //   return _getRoute(const ChoosePage(), settings);
      // case phoneNumber:
      //   return _getRoute(const PhoneNoPage(), settings);
      // case login1:
      //   return _getRoute(const LoginPageOne(), settings);
      // case otp:
      //   return _getRoute(const OTPPage(), settings);
      // case regOne:
      //   return _getRoute(
      //       const ProfileScreenRegOne(), settings); //ProfileScreenRegOne//Home
      // case subjectdetail:
      //   return _getRoute(const SubjectDetails(), settings);
      // case createClassRoom:
      //   return _getRoute(CreateClassRoom(), settings);
      // case testingPage:
      //   return _getRoute(const TestingPage(title: 'Testing'), settings);
      // case busyPasscode:
      //   return _getRoute(
      //       const BusyPasscodePage(title: 'Busy Passcode'), settings);
      default:
        return _getRoute(
            const HomePage(
              title: "Home",
            ),
            settings);
    }
  }

  static MaterialPageRoute<dynamic> _getRoute(
          Widget widget, RouteSettings settings) =>
      MaterialPageRoute(builder: (c) => widget, settings: settings);
}
