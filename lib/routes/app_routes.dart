import 'package:ecommerceapp/routes/routes_name.dart';
import 'package:ecommerceapp/view/auth/login_page.dart';
import 'package:ecommerceapp/view/auth/signup_page.dart';
import 'package:ecommerceapp/view/cart/view_cart.dart';
import 'package:ecommerceapp/view/error/error_page.dart';
import 'package:ecommerceapp/view/home/home_page.dart';
import 'package:ecommerceapp/view/settings/settings_page.dart';
import 'package:ecommerceapp/view/welcome/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoutes(RouteSettings route) {
    switch (route.name) {
      case RoutesName.welcomePage:
        return MaterialPageRoute(
          builder: (context) => WelcomePage(),
        );
      case RoutesName.signupPage:
        return MaterialPageRoute(
          builder: (context) => SignupPage(),
        );
      case RoutesName.loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case RoutesName.homePage:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );
      case RoutesName.viewCart:
        return MaterialPageRoute(
          builder: (context) => ViewCart(),
        );
      case RoutesName.settingsPage:
        return MaterialPageRoute(
          builder: (context) => SettingsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => ErrorPage(),
        );
    }
  }
}
