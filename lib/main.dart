import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqflite_database_example/page/notes_page.dart';
import 'package:sqflite_database_example/page/splash_page.dart';

import 'page/signup_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes SQLite';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Color(0xFFFAFAFA),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
        home: SplashPage(),
        routes: {
          '/sign-up': (context) => SignUpPage(),
          '/notes-page': (context) => NotesPage(),
        },
      );
}
