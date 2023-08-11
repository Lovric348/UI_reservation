import 'package:flutter/material.dart';
import 'package:reservation_new/frizerski.dart';

class Trazi extends StatelessWidget {
  const Trazi({super.key});

  @override
  Widget build(BuildContext context) {
    double scalewidth = MediaQuery.of(context).size.width / 400;
    double scaleheight = MediaQuery.of(context).size.height / 800;
    return SafeArea(
      child: Scaffold(
        
        
        body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/1366_2000.png'),
                  fit: BoxFit.cover,
                  
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: scaleheight*20 ,),
                  Container(
                    
                    margin: EdgeInsets.fromLTRB(scalewidth*20, scaleheight*5, scalewidth*20, scaleheight*5),
                    width: scalewidth*400,
                    height: scaleheight*50,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 3,
                        color: Color.fromARGB(255, 141, 134, 134),
                      )
                    ),
                    child: TextField(
                      
                      decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,
                      ),
                       hintText: 'Pretraži',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 141, 134, 134),
                            ),
                            
                      filled: true,
                            fillColor: Color.fromARGB(255, 237, 234, 234),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 25.0),
                          ),
                            ),
                      
                      
                    ),
                    SizedBox(height: scaleheight*50,),
                    Row(
                      children: [
                        SizedBox(width: scalewidth*220
                        ,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Frizerski()),
  );
                          },
                          child: Container(
                            width: scalewidth*25,
                            height: scaleheight*25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                              border: Border.all(
                                width: 5,
                                color: Colors.red,
                              )
                            ),
                          ),
                        )
                      ],
                    )
                  

              ]),
            ),
      ),
    );
  }
}