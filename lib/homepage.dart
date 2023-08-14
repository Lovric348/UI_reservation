import 'package:flutter/material.dart';
import 'package:reservation_new/models/shop_model.dart';
import 'package:reservation_new/my_widget.dart';
import 'package:reservation_new/popusti.dart';
import 'package:reservation_new/usluge_screen.dart';

class HomePage extends StatelessWidget {
   HomePage
({super.key});
  List<Shop> favoriti=[Shop(naziv: 'Autoklub', ID: 6, logo: Image.asset('assets/aloe.png')),
                Shop(naziv: 'Fiziocentar', ID: 3, logo: Image.asset('assets/FivestarSaltyBar3.png')),
                Shop(naziv: 'Kupalište', ID: 4, logo: Image.asset('assets/SIXTHBIT-3.png')),];
  List<Shop> svi=[Shop(naziv: 'Frizerski salon i salon za uljepšavanje', ID: 1, logo: Image.asset('assets/flame.png')),
                Shop(naziv: 'Teniski teren', ID: 2, logo: Image.asset('assets/radius.jpg')),
                Shop(naziv: 'Autoklub', ID: 6, logo: Image.asset('assets/coffe.png')),
                Shop(naziv: 'Fiziocentar', ID: 3, logo: Image.asset('assets/halal.png',)),
                Shop(naziv: 'Kupalište', ID: 4, logo: Image.asset('assets/mountain.png')),
                Shop(naziv: 'Muzej', ID: 5, logo: Image.asset('assets/FivestarSaltyBar3.png')),
                Shop(naziv: 'Zubar', ID: 7, logo: Image.asset('assets/state.png'))];
  List<Shop> popusti=[Shop(naziv: 'Kupalište', ID: 20, logo: Image.asset('assets/state.png')),
                Shop(naziv: 'Muzej', ID: 15, logo: Image.asset('assets/mountain.png')),
                Shop(naziv: 'Zubar', ID: 30, logo: Image.asset('assets/aloe.png'))];
                
  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return SafeArea(
      child: Scaffold(
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: scaleheight*40,
            ),
            Container(
              
              margin: EdgeInsets.fromLTRB(scaleheight*15, 0, 0, scaleheight*5),
              child: Text(
                'Tvoji favoriti',
              style: TextStyle(
                fontSize: scaleheight*25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            ),
            
            SizedBox(
              height: scaleheight*130,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: favoriti.length, 
                itemBuilder: (BuildContext context, int index) {
                  return MyWidget(shop: favoriti[index]);
                },
              ),
            ),
            SizedBox(
              height: scaleheight*10,
            ),
            Container(
              
              margin: EdgeInsets.fromLTRB(scaleheight*15, 0, 0, scaleheight*5),
              child: Text(
                'Istraži',
              style: TextStyle(
                fontSize: scaleheight*25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            ),
            
            InkWell(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ShopDetailsScreen(
                          
                        ),),);
              },
              child: SizedBox(
                height: scaleheight*130,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: svi.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MyWidget(shop: svi[index]);
                  },
                  
                ),
              ),
            ),
            SizedBox(
              height: scaleheight*10,
            ),
            Container(
              
              margin: EdgeInsets.fromLTRB(scaleheight*15, 0, 0, scaleheight*5),
              child: Text(
                'Popusti',
              style: TextStyle(
                fontSize: scaleheight*25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
            ),
            
            Center(
              child: SizedBox(
                height: scaleheight*130,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: popusti.length,
                  itemBuilder: (BuildContext context,int index) {
                    return Popusti(shop: popusti[index],);
                  },
                  
                ),
              ),
            ),
            
            
            
            
            
            
          ],
        ),
      ),
    );
  }
}