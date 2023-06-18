import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotePage2 extends StatefulWidget {
  const NotePage2({super.key});

  @override
  State<NotePage2> createState() => _NotePage2State();
}

class _NotePage2State extends State<NotePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(158, 211, 33, 100),
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.send),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Icon(Icons.navigate_before,
                    color: Color.fromRGBO(158, 211, 33, 100), size: 32),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.612),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 226, 226, 226),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                height: 50,
                width: 50,
              ),
              Text("Gambar",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
              Container(
                padding: EdgeInsets.only(left: 15),
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
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.image, color: Colors.grey, size: 32),
                    Text(
                      "Tambahkan gambar",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                    Padding(padding: EdgeInsets.only(left: 150)),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(158, 211, 33, 100),
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Text("Deskripsi",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18)),
              Container(
                padding: EdgeInsets.only(left: 15),
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
                height: 50,
                child: Row(
                  children: [
                    Icon(Icons.attach_file, color: Colors.grey, size: 32),
                    Text(
                      "Tambahkan deskripsi anda",
                      style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontWeight: FontWeight.w300,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
