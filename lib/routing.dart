import 'package:expense_tracker/setting/profilesetting.dart';
import 'package:expense_tracker/setting/settings1.dart';
import 'package:expense_tracker/setting/settings2.dart';
import 'package:expense_tracker/setting/settings3.dart';
import 'package:expense_tracker/setting/settings4.dart';
import 'package:flutter/material.dart';
import './main.dart';
import './signUp.dart';
import './login.dart';
import './splash.dart';
import 'homepage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/splash':
        return MaterialPageRoute(builder: (_) => const Splash());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case '/signin':
        return MaterialPageRoute(builder: (_) => const SignInPage());
        case '/setting':
        return MaterialPageRoute(builder: (_) =>  const SettingsFourPage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
