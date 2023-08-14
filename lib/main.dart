import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_new/navbar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
   const MyApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
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