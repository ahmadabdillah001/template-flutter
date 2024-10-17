import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text(
          'Api Mahasiswa',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: ListView(children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 125,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(1, 2),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'asset/person.png',
                        height: 100,
                      ),
                    ),
                    SafeArea(
                      child: Container(
                        width: 12,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Mahasiswa',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.black54),
                        ),
                        SafeArea(
                          child: Container(
                            height: 8,
                          ),
                        ),
                        Text(
                          'Ahmad Abdillah',
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.black),
                        ),
                        SafeArea(
                          child: Container(
                            height: 8,
                          ),
                        ),
                        Text(
                          '082123456789',
                          style: GoogleFonts.poppins(
                              fontSize: 14, color: Colors.black54),
                        ),
                        SafeArea(
                          child: Container(
                            height: 8,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
