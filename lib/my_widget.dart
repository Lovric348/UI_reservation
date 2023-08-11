import 'package:flutter/material.dart';
import 'package:reservation_new/models/shop_model.dart';

class MyWidget extends StatefulWidget {
  final Shop shop;
  
  const MyWidget
({super.key,required this.shop});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: widget.shop.logo,
      ),
    );
  }
}