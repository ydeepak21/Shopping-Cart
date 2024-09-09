// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoppingcart/components/bottom_nav_bar.dart';
import 'package:shoppingcart/pages/cart_page.dart';
import 'package:shoppingcart/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //This selected index is to control the bottom nav bar
  int selectedIndex = 0;

  //This Method will update our selected index
  //When the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  //Page to display
  final List<Widget> pages = [
    //Shop page
    ShopPage(),

    //Cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 142, 246, 196),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Logo
           Column(
            children: [
               DrawerHeader(
              child: Image.asset('lib/image/logo.png'),
            ),
            //Others Page
            Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),

             Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            ],
           ),

            Padding(
              padding: EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
      body: pages[selectedIndex] ,
         );
  }
}
