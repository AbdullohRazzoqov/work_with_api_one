import 'package:flutter/material.dart';
import 'view/screen/home/home_page.dart';
import 'view/screen/ui_chiq_usullar/main_method.dart';
import 'view/screen/ui_chiq_usullar/press_button.dart';
import 'view/screen/ui_chiq_usullar/with_initstate.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case "/press":
        return MaterialPageRoute(
          builder: (context) => const PressButton(),
        );
      case "/init":
        return MaterialPageRoute(
          builder: (context) => const WithInitState(),
        );
      case "/main":
        return MaterialPageRoute(builder: (context) => const MainMedhod());
    }
  }
}
