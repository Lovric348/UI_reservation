import 'package:flutter/material.dart';
import 'package:reservation_new/models/termini_model.dart';

class Rezer extends StatefulWidget {
  final Termini termini;
  
  const Rezer
({super.key,required this.termini});

  @override
  State<Rezer> createState() => _RezerState();
}

class _RezerState extends State<Rezer> {
  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return Container(
      
      margin: EdgeInsets.fromLTRB(scalewidth*7, scaleheight*7, scalewidth*7, scaleheight*7),
      height: scaleheight*90,
      width: scalewidth*100,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(7, 7, 0, 0),
        child: Row(
          children: [
            Column(
              children: [
                Text(widget.termini.naziv,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),),
                SizedBox(height: scaleheight*7,),
                Text(widget.termini.nazivUsluge),
              ],
            ),
            SizedBox(width: scalewidth*190,),
            Column(
              children: [
                Text(widget.termini.datum),
                SizedBox(height: scaleheight*7,),
                Text(widget.termini.vrijeme),
              ],
            ),
          ],
        )),
    );
  }
}