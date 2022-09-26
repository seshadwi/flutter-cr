import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Widget inputSection() {
      Widget inputPassword() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Password'),
                SizedBox(height: 6),
                TextFormField(
                  obscureText: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Input password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(
                        color: Colors.grey,
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
              ],
            ),
          ),
        );
      }

      Widget submitButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, '/notes-page');
              }
            },
            child: Text(
              'Sign In',
              style: GoogleFonts.poppins().copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xFFEB616D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Form(
          child: Column(
            children: [
              inputPassword(),
              submitButton(),
            ],
          ),
        ),
      );
    }

    Widget forgotPassword() {
      return InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200,
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Hubungi admin\nuntuk reset password',
                        style: GoogleFonts.poppins().copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 100,
                        child: ElevatedButton(
                          child: const Text('Close'),
                          onPressed: () => Navigator.pop(context),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFEB616D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            top: 30,
            bottom: 73,
          ),
          child: Text(
            'Forgot Password ?',
            style: GoogleFonts.poppins().copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Colors.grey,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Simpan\nCatatanmu Disini',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                inputSection(),
                forgotPassword(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
