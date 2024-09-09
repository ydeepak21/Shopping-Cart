// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingcart/components/shoe_tile.dart';
import 'package:shoppingcart/models/shoe.dart';

import '../models/cart.dart';




class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) =>Column(

      children: [
        //Search Bar
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 142, 246, 196),
            borderRadius: BorderRadius.circular(8),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Search',
            ),
            Icon(
              Icons.search,
            )
          ]),
        ),

        //Message
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "Everyone Flies.. Some Fly Longer Than Others."
            ),
        ),

        //Hot Picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                'See all',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlue),
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
        //List of shoes for sale
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                //Get a Shoe from shop list
                  Shoe shoe = value.getShoeList()[index];

                //Shoe shoe = Shoe(name: 'Air Jorden', price: '240', imagePath: 'lib/image/image2.jpg', description: 'Cool shoe');
                  //Return the shoe
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ShoeTile(shoe: shoe),
                );
              }),
            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.only( left: 10, right: 10, bottom: 0),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    ),
    );
  }
}
