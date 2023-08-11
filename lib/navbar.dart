import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:reservation_new/homepage.dart';
import 'package:reservation_new/profil.dart';
import 'package:reservation_new/trazi.dart';

class NavBar extends StatefulWidget {
   NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
   int _index= 0;

  final List <Widget> screens=[
    HomePage(),
    Profil(),
    Trazi(),
  ];

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return Scaffold(
      body: screens[_index],
     bottomNavigationBar:  GNav(
          curve: Curves.ease,
          
          selectedIndex: _index,
              backgroundColor: Color(0xFFA2D2FF),
              color: Colors.black,
              tabBorderRadius: 10,
              tabBackgroundColor: const Color.fromARGB(255, 224, 224, 224),
              onTabChange: (index) {
                setState(() {
                _index = index;
              });
              
              },
              gap: scaleheight* 8,
              tabs: [
                
                GButton(
                  icon: Icons.home,
                  text: 'Glavni izbornik',),
                  
                GButton(
                  icon: Icons.person,
                  text: 'Profil',),
                  
                GButton(
                  
                  icon: Icons.search,
                  text: 'Traži',),
                  
              ],
            ),
       
     
    );
  }
}