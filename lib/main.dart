import 'package:chatapp/common/theme/dark_theme.dart';
import 'package:chatapp/common/theme/light_theme.dart';
import 'package:chatapp/features/auth/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
