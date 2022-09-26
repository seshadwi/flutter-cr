import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    repeatOnce();
    Timer(Duration(milliseconds: 3500), () {
      Navigator.pushNamed(context, '/sign-up');
    });
  }

  void repeatOnce() async {
    await _controller.forward();
    // await _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(3, 3),
            colors: [
              const Color(0xFFEB616D),
              const Color(0xFFFF7B87),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 20),
              child: FadeTransition(
                opacity: _animation,
                child: Image.asset(
                  'assets/logo.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Catatan Rahasiaku',
                  textStyle: GoogleFonts.poppins().copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  speed: Duration(milliseconds: 100),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_fade/image_fade.dart';

// class SplashPage extends StatefulWidget {
//   const SplashPage({Key? key}) : super(key: key);

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: double.infinity,
//           height: double.infinity,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment(3, 3),
//               colors: [
//                 const Color(0xFFEB616D),
//                 const Color(0xFFFF7B87),
//               ],
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: EdgeInsets.only(bottom: 20),
//                 child: Image.asset(
//                   'assets/logo.png',
//                   width: 120,
//                   height: 120,
//                 ),
//               ),
//               Text(
//                 'Catatan Rahasiaku',
//                 style: GoogleFonts.poppins().copyWith(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
