import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OpenApps2 extends StatelessWidget {
  const OpenApps2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 60),
            child: Image.asset(
              'assets/img-splash-1.png',
              height: 300,
              width: 300,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Berbagi dengan",
                  style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  "Komunitas",
                  style: GoogleFonts.poppins(
                    fontSize: 45,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  "Berbagi ilmu bersama dengan berbagai \nkomunitas yang tersedia.",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFAE373D),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    "Next",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
