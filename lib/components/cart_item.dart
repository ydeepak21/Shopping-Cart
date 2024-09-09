import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoppingcart/models/cart.dart';
import 'package:shoppingcart/models/shoe.dart';
import 'package:shoppingcart/components/cart_item.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //Remove Item from Cart
  void removeItemFromcart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(8),),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: SizedBox(
            child: Image.asset(
                widget.shoe.imagePath,
              height: 80,
              width: 80,
            ),
        ),
        title: SizedBox(child: Text(widget.shoe.name)),
        subtitle: SizedBox(child: Text(widget.shoe.price)),
        trailing: IconButton(onPressed: removeItemFromcart, icon: const Icon(Icons.delete),
      ),
    ),
    );
  }
}
