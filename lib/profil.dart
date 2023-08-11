import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_new/models/termini_model.dart';
import 'package:reservation_new/rezervirano.dart';

class Profil extends StatefulWidget {
   Profil({super.key});
  List<Termini> rezervirano=[
    Termini(naziv: 'Frizerski salon', nazivUsluge: 'Muško šišanje', datum: '21.09.2023', vrijeme: '16:00'),
    Termini(naziv: 'Teniski tereni', nazivUsluge: 'Trening snage', datum: '03.09.2023', vrijeme: '13:00'),
    Termini(naziv: 'Fiziocentar', nazivUsluge: 'Akupunktura', datum: '10.09.2023', vrijeme: '15:00'),
  ];

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return SafeArea(
      child: Scaffold(
        
       
        body: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
    
            SizedBox(height: scaleheight *60),
    
            Container(
              margin: EdgeInsets.fromLTRB(scaleheight*40, 0, 0, 0),
              child: Row(
                children: [
                  AnimatedTextKit(
                    repeatForever: false,
                    totalRepeatCount: 1,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        
                        'Domagoj',
                        textStyle: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 35,
                        ),
                        speed: const Duration(milliseconds: 200),
                        
                        ),
                    ],),
    //                Text(
      //                  'Domagoj',
       //                 style: TextStyle(
       //                 fontFamily: GoogleFonts.roboto().fontFamily,
         //               
           //             fontSize: 35,
             //           color: Colors.black,
               //       ),),
                  SizedBox(
                    width: scalewidth*20,
                  ),
                  Icon(
                    Icons.settings,
                    size: 35,)
                ],
              ),
            ),
            SizedBox(height: scaleheight*30,),
            Container(
              margin: EdgeInsets.fromLTRB(scalewidth*15, 0, 0, scalewidth*15),
              child: Text(
                'Rezervacije',
                style: TextStyle(
                  fontSize: scaleheight*25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: widget.rezervirano.length,
                itemBuilder:  (BuildContext context,  int index) {
                  return Rezer(termini: widget.rezervirano[index]);
                  
                })
                )
                
    
          ],
        ),
        
      ),
    );
  }
}