// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      child: GNav(
          color: const Color.fromARGB(255, 1, 22, 1),
          activeColor: const Color.fromARGB(255, 5, 74, 7),
          mainAxisAlignment: MainAxisAlignment.center,
          backgroundColor: const Color.fromARGB(255, 135, 242, 190),
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: "Shop",
              textColor: Colors.black,
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "Cart",
              textColor: Colors.black,
            ),
          ]),
    );
  }
}
