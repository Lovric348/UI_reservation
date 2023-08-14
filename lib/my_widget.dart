import 'package:flutter/material.dart';
import 'package:reservation_new/models/shop_model.dart';

class MyWidget extends StatefulWidget {
  final Shop shop;

  const MyWidget({super.key, required this.shop});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: FittedBox(
              fit: BoxFit.cover,
              child: Container(
                child: widget.shop.logo,
              )),
        ),
      ),
    );
  }
}
