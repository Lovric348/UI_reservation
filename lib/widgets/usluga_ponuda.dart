import 'package:flutter/material.dart';

import '../models/usluga_model.dart';

class UslugaPonudaWidget extends StatelessWidget {
  final Usluga usluga;

   UslugaPonudaWidget({super.key, required this.usluga});

  @override
  Widget build(BuildContext context) {
    double mqHeight = MediaQuery.of(context).size.height;
    double mqWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.fromLTRB(0.0, 0.0, 12.0, 12.0),
      height: 30,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(color: Color(0x22000000), spreadRadius: 2, blurRadius: 2, offset: Offset(0.0, 3.0))
        ]
      ),
      child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(usluga.naziv, style: const TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.black)),
              SizedBox(width: mqWidth* 0.57,),
              Text('${usluga.cijena.toString()}€', style: const TextStyle(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.black)),
            ],
          ),
        ),
      
    );
  }
}