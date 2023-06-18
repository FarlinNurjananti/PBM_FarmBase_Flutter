import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidePassword = true;

  void togglePassword() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _formKey;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  'assets/icon.png',
                  height: 150,
                  width: 150,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Selamat datang kembali",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    "Mari buat pertanian impianmu \nbersama kami",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        cursorColor: Color(0xFF9ED321),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: const TextStyle(
                            color: Color(0xFF9ED321),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF9ED321), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF9ED321), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          var _email = value;
                        },
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        cursorColor: Color(0xFF9ED321),
                        obscureText: _isHidePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color:
                                Color(0xFF9ED321), // Set the color of labelText
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF9ED321), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF9ED321), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          suffixIcon: IconButton(
                            splashRadius: 1,
                            icon: Icon(
                                _isHidePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: _isHidePassword
                                    ? const Color.fromRGBO(131, 131, 131, 100)
                                    : const Color.fromRGBO(158, 211, 33, 100)),
                            onPressed: togglePassword,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          var _password = value;
                        },
                      ),
                      const SizedBox(height: 25.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: const Size(50, 40),
                            backgroundColor: const Color(0xFF9ED321)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/homepage');
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                          }
                        },
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Belum punya akun?",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.grey,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Color.fromRGBO(158, 211, 33, 100),
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/background.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
