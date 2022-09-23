import 'package:flutter/material.dart';

import 'src/login_page.dart';
import 'src/main_page.dart';
import 'src/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
