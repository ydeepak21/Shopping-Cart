// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoppingcart/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 142, 246, 196),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Logo
              Image.asset(
                "lib/image/logo.png",
                height: 150,
              ),
              const SizedBox(
                height: 24,
              ),

              //Title
              Center(
                child: Text(
                  "Just Add It!! & Get It Done!!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),

              //Sub Title
              Center(
                child: Text(
                  "Just add your perfect pair, and get it done in style..!!",
                  style: TextStyle(
                   // fontWeight: FontWeight.bold,
                    fontSize: 15,
                    
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              //Start Now button

              GestureDetector(
                onTap: () {
                  //print("clicked");
                   Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) =>HomePage(),
                    ),
                );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text(
                        "Shop Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          ),
                        ),
                    ),
                  ),
               
                ),
              ),
  
            ],
          ),
        ),
      ),
    );
  }
}
