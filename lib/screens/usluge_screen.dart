import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reservation_new/models/usluga_model.dart';
import 'package:reservation_new/widgets/usluga_ponuda.dart';

class ShopDetailsScreen extends StatelessWidget {
  ShopDetailsScreen({super.key});
  List<Usluga> sveusluge = [
    Usluga(
      naziv: 'Muško šišanje',
      trajanje: '30 min',
      cijena: 7,
    ),
    Usluga(
      naziv: 'Žensko šišanje',
      trajanje: '50 min',
      cijena: 12,
    ),
    Usluga(
      naziv: 'Bojanje kose',
      trajanje: '30 min',
      cijena: 10,
    ),
    Usluga(
      naziv: 'Ombre',
      trajanje: '30 min',
      cijena: 9,
    )
  ];

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    double mqHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: ElevatedButton.icon(
                  icon: Icon(Icons.arrow_back),
                  label: Text('Povratak'),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 11, 49, 175),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(height: mqHeight * 0.035),
              AnimatedTextKit(
                repeatForever: false,
                totalRepeatCount: 1,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Frizerski salon Škarica',
                    textStyle: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 35,
                    ),
                    speed: const Duration(milliseconds: 70),
                  ),
                ],
              ),
              SizedBox(height: mqHeight * 0.02),
              Text('Dostupne usluge',
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold)),
              SizedBox(height: mqHeight * 0.03),
              Container(
                height: scaleheight * 150,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    clipBehavior: Clip.none,
                    physics: const BouncingScrollPhysics(),
                    itemCount: sveusluge.length,
                    itemBuilder: (BuildContext context, int index) {
                      return UslugaPonudaWidget(usluga: sveusluge[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
