import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedTextKit(
          animatedTexts: [
            FadeAnimatedText(
              'CR',
              textStyle: GoogleFonts.poppins().copyWith(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
              ),
              duration: Duration(milliseconds: 3000),
            ),
            // ScaleAnimatedText(
            //   'Catatan Rahasia',
            //   textStyle: TextStyle(fontSize: 50.0, fontFamily: 'Poppins'),
            //   duration: Duration(milliseconds: 3000),
            // ),
          ],
        ),
      ),
    );
  }
}
