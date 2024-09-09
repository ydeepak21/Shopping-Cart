// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:shoppingcart/models/shoe.dart';

import '../main.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 400,
      //height: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 142, 246, 196),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Shoe Pic
          ClipRect(

            child: Image.asset(
                shoe.imagePath,
              height: 250,
              fit: BoxFit.fill,
            ),
          ),

          //Description
          Text(
            shoe.description,
            style: TextStyle(color: Colors.black),
          ),

          //Price + Details
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Shoe Name
                    // Text(
                    //   "\$ ${ shoe.price}",
                    //   style: const TextStyle(
                    //       color: Colors.black,
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 20,
                    //   ),
                    // ),

                    Text(
                        shoe.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    //Price
                    Text(
                        "\$${shoe.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),

                //Plus Button
                Container(
                  padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      )
                    ),
                    child: Icon(
                        Icons.add,
                      color: Colors.white,
                    )
                ),
              ],
            ),
          )

          //Button to add to cart
        ],
      ),
    );
  }
}
