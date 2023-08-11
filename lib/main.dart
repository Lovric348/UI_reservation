import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_new/navbar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
   MyApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(  
        fontFamily: GoogleFonts.kadwa().fontFamily,       
        scaffoldBackgroundColor: Color.fromARGB(255, 197, 232, 255),
      ),    
      home: NavBar(),
    );
  }
}