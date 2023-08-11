import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Frizerski extends StatefulWidget {
  Frizerski({super.key});

  @override
  State<Frizerski> createState() => _FrizerskiState();
}

class _FrizerskiState extends State<Frizerski> {
  bool animationFinish = false;

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(scaleheight * 20, 0, 0, 0),
                child: Row(
                  children: [
                    Flexible(
                      child: Animate(
                        effects: [SlideEffect(), FadeEffect()],
                        child: Text(
                          'Frizerski salon Škarica',
                          style: TextStyle(
                            fontFamily: GoogleFonts.roboto().fontFamily,
                            fontSize: 35,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: scaleheight * 57,
              ),
              Animate(
                  delay: 100.ms,
                  effects: [SlideEffect(), FadeEffect()],
                  child: Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(
                        width: scalewidth * 7,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Matije Antuna Relkovića, 43',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.kadwa().fontFamily,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchURLlocation();
                                }))
                    ],
                  )),
              SizedBox(
                height: scaleheight * 7,
              ),
              Animate(
                  delay: 200.ms,
                  effects: [SlideEffect(), FadeEffect()],
                  child: Row(
                    children: [
                      Icon(Icons.location_city_outlined),
                      SizedBox(
                        width: scalewidth * 7,
                      ),
                      Text('35410, Nova Kapela',
                      style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.kadwa().fontFamily,
                                fontSize: 16,)
                      )
                    ],
                  )),
              SizedBox(
                height: scaleheight * 7,
              ),
              Animate(
                  delay: 300.ms,
                  effects: [SlideEffect(), FadeEffect()],
                  child: Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(
                        width: scalewidth * 7,
                      ),
                      Text('Pon- Sub 08:00- 17:00',
                      style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.kadwa().fontFamily,
                                fontSize: 16,))
                    ],
                  )),
              SizedBox(
                height: scaleheight * 7,
              ),
              Animate(
                  delay: 400.ms,
                  effects: [SlideEffect(), FadeEffect()],
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: scalewidth * 7,
                      ),
                      Text('vl. Tanja Fumić',
                      style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.kadwa().fontFamily,
                                fontSize: 16,))
                    ],
                  )),
              SizedBox(
                height: scaleheight * 7,
              ),
              Animate(
                  delay: 500.ms,
                  effects: [SlideEffect(), FadeEffect()],
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.facebook),
                      SizedBox(
                        width: scalewidth * 7,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'Frizerski salon Škarica',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.kadwa().fontFamily,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchURLfacebook();
                                }))
                    ],
                  )),
              SizedBox(
                height: scaleheight * 7,
              ),
              Animate(
                  delay: 600.ms,
                  effects: [SlideEffect(), FadeEffect()],
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.instagram),
                      SizedBox(
                        width: scalewidth * 7,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'skarica_frizerski_43',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.kadwa().fontFamily,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchURLinstagram();
                                }))
                    ],
                  )),
              SizedBox(
                height: scaleheight * 7,
              ),
              Animate(
                  delay: 700.ms,
                  effects: [SlideEffect(), FadeEffect()],
                  child: Row(
                    children: [
                      Icon(Icons.alternate_email_rounded),
                      SizedBox(
                        width: scalewidth * 7,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'skarica.hr',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: GoogleFonts.kadwa().fontFamily,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _launchURLhttp();
                                }))
                    ],
                  )),
              SizedBox(
                height: scaleheight * 147,
              ),
              Center(
                child: Animate(
                  delay: 1000.ms,
                  effects: [ShakeEffect(), FadeEffect()],
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Rezervirajte svoj termin sada!',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontFamily: GoogleFonts.kadwa().fontFamily,
                          
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFA2D2FF),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _launchURLlocation() async {
    final Uri url = Uri.parse('https://goo.gl/maps/R5pDVazLA38rWnUB9');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch https://goo.gl/maps/R5pDVazLA38rWnUB9');
    }
  }

  _launchURLfacebook() async {
    final Uri url = Uri.parse('https://www.facebook.com/JiuJitsuKlubFortress/');
    if (!await launchUrl(url)) {
      throw Exception(
          'Could not launch https://www.facebook.com/JiuJitsuKlubFortress/');
    }
  }

  _launchURLinstagram() async {
    final Uri url =
        Uri.parse('https://www.instagram.com/jiujitsuklubfortress/');
    if (!await launchUrl(url)) {
      throw Exception(
          'Could not launch https://www.instagram.com/jiujitsuklubfortress/');
    }
  }

  _launchURLhttp() async {
    final Uri url = Uri.parse('https://www.jjkfortress.hr/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch https://www.jjkfortress.hr/');
    }
  }
}
