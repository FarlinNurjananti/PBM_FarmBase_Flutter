import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(NotePage());
}

class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

Widget _card() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    decoration: BoxDecoration(
      color: Color.fromRGBO(255, 255, 255, 0.612),
      borderRadius: BorderRadius.circular(20),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 241, 240, 240),
          spreadRadius: 5,
          blurRadius: 15,
        ),
      ],
    ),
    child: Column(
      children: <Widget>[
        Container(
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
                image: AssetImage("assets/img.png"), fit: BoxFit.cover),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hama Padi",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color.fromRGBO(158, 211, 33, 100),
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                "Hama padi ini sering saya temui. Biasanya ditemukan pada minggu ke-2 dari penanaman. Untuk solusi yang saya pakai,  biasanya saya membeli obat agar padi kembali sehat.",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavigationKey;
    var _page;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey,
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: <Widget>[
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton.small(
                      backgroundColor: Color.fromRGBO(158, 211, 33, 100),
                      onPressed: () {},
                      child: Icon(
                        Icons.sticky_note_2_sharp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Catatan Hama Anda",
                      style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Column(
                children: [_card(), _card()],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Buat Catatan'),
        icon: Icon(Icons.create),
        backgroundColor: Color.fromRGBO(158, 211, 33, 100),
      ),
    );
  }
}
