// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingcart/components/cart_item.dart';
import 'package:shoppingcart/models/cart.dart';
import 'package:shoppingcart/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            //Heading
            const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 10),

            Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index){

              //Get individual Shoe
              Shoe individualShoe = value.getUserCart() [index];
              //Return to cart
              return CartItem(shoe: individualShoe);

            },
            ),),
          ],
        ),
      ),
    );
  }
}