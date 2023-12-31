import 'package:chatapp/features/auth/pages/login_page.dart';
import 'package:chatapp/features/auth/pages/user_info_page.dart';
import 'package:chatapp/features/auth/pages/verification_page.dart';
import 'package:chatapp/features/contact/pages/contact_page.dart';
import 'package:chatapp/features/home/pages/home_page.dart';
import 'package:chatapp/features/welcome/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String welcome = 'Welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'user-info';
  static const String home = 'home';
  static const String contact = 'contact';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(
          builder: (context) => const WelcomePage(),
        );

      case login:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
            smsCodeId: args['smsCodeId'],
            phoneNumber: args['phoneNumber'],
          ),
        );

      case userInfo:
        return MaterialPageRoute(
          builder: (context) => const UserInfoPage(),
        );

      case home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case contact:
        return MaterialPageRoute(
          builder: (context) => const ContactPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
              body: Center(
            child: Text('No Page Route Provided'),
          )),
        );
    }
  }
}
