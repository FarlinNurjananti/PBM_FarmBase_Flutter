import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Widget _card() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Image.asset(
          'assets/img.png',
          height: 80,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Hama Padi",
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Color.fromRGBO(158, 211, 33, 100),
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ],
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavigationKey;
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromRGBO(158, 211, 33, 100),
          key: _bottomNavigationKey,
          items: const <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
          onTap: (index) {
            setState(() {
              var _page = index;
            });
          }),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 30, top: 20),
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Selamat datang!",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        "Farlin Nurjananti",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                height: 140,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(158, 211, 33, 100)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.cloud,
                      size: 100,
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 35)),
                        Text(
                          "Sunny Cloud",
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "30°C",
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(255, 255, 255, 0.612),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 241, 240, 240),
                      spreadRadius: 5,
                      blurRadius: 15,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Catatan Anda",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 30,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(158, 211, 33, 100),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [_card(), _card(), _card(), _card()],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(158, 211, 33, 100),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.create),
                          SizedBox(width: 10),
                          Text("Buat Catatan", style: GoogleFonts.poppins())
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
