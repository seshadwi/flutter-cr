import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 20,
          right: 20,
        ),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Masukkan Pin Anda',
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      obscureText: true,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        hintText: 'Masukkan pin',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        } else if (value != "1234") {
                          return 'Wrong password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 55,
                      child: TextButton(
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/main');
                          }
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(
//           top: 70,
//           left: 20,
//           right: 20,
//         ),
//         child: Form(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Masukkan Pin Anda',
//                 style: GoogleFonts.poppins(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 obscureText: true,
//                 cursorColor: Colors.black,
//                 decoration: InputDecoration(
//                   hintText: 'Masukkan Pin',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(17),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(17),
//                     borderSide: BorderSide(
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   } else if (value != "1234") {
//                     return 'Password salah';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 20),
//               Container(
//                 width: double.infinity,
//                 height: 55,
//                 child: TextButton(
//                   onPressed: () {
//                     // Validate returns true if the form is valid, or false otherwise.
//                     if (_formKey.currentState!.validate()) {
//                       // If the form is valid, display a snackbar. In the real world,
//                       // you'd often call a server or save the information in a database.
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Processing Data')),
//                       );
//                     }
//                   },
//                   child: Text(
//                     'Buka!',
//                     style: GoogleFonts.poppins().copyWith(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.white,
//                     ),
//                   ),
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(17),
//                     ),
//                   ),
//                 ),
//               ),
//               Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextFormField(
//                       obscureText: true,
//                       // The validator receives the text that the user has entered.
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter some text';
//                         } else if (value != "1234") {
//                           return 'Password salah';
//                         }
//                         return null;
//                       },
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 16.0),
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Validate returns true if the form is valid, or false otherwise.
//                           if (_formKey.currentState!.validate()) {
//                             // If the form is valid, display a snackbar. In the real world,
//                             // you'd often call a server or save the information in a database.
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(content: Text('Processing Data')),
//                             );
//                           }
//                         },
//                         child: const Text('Submit'),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
