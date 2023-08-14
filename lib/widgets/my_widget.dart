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
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return Container(
      
      margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
      height: 130,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(5),
      ),
      child: 
          Column(
            children: [
              Container(
                width: scalewidth*130,
                height: scaleheight*100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Container(
                          child: widget.shop.logo,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: scaleheight*1,
              ),
              Container(
                width: scalewidth* 130,
                height: scaleheight*2,
                color: Colors.black,
              ),
              SizedBox(
                height: scaleheight*1,
              ),
              Container(
                width: scalewidth* 130,
                height: scaleheight*2,
                color: Colors.black,
              ),
              Expanded(child: Text(widget.shop.naziv))
            ],
          ),
         
        
    );
  }
}
