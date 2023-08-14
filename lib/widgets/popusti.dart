import 'package:flutter/material.dart';
import 'package:reservation_new/models/shop_model.dart';

class Popusti extends StatefulWidget {
  final Shop shop;

  const Popusti({super.key, required this.shop});

  @override
  State<Popusti> createState() => _PopustiState();
}

class _PopustiState extends State<Popusti> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      alignment: AlignmentDirectional.topEnd,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: widget.shop.logo,
          ),
        ),
        Positioned(
          top: -10,
          right: -10,
          child: Container(
            
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 11, 49, 175),
              border: Border.all(
                width: 17,
                color: Color.fromARGB(255, 11, 49, 175)
              ),
            ),
            child: Row(
              children: [
                Center(
                  child: Text('${widget.shop.ID}%',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                  
                ),
              ],
            ),
          ),
        ),
      ],
    );
    /* Container(
      
      
      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        margin: EdgeInsets.fromLTRB(7, 7, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.shop.naziv),
            Row(
              children: [
                Text(widget.shop.ID.toString()),
                Text('%'),
              ],
            ),
          ],
        )),
    ); */
  }
}
