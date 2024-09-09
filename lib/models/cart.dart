import 'package:flutter/cupertino.dart';
import 'package:shoppingcart/models/shoe.dart';

class Cart extends ChangeNotifier{
  //List of shoes for sale
List<Shoe> shoeShop = [

  Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'lib/image/image1.webp',
      description: 'The forward-thinking design of his latest signature shoe.'
  ),

  Shoe(
      name: 'Air Jordan',
      price: '220',
      imagePath: 'lib/image/image2.jpg',
      description: 'You have got the hops and the speed-lace up in shoes that enhance.'
  ),

  Shoe(
      name: 'KD Treys',
      price: '240',
      imagePath: 'lib/image/image3.webp',
      description: 'A secure mid foot strap is suited for scoring binges and defensive.'
  ),

  Shoe(
      name: 'Kyrie 6',
      price: '190',
      imagePath: 'lib/image/image4.jpg',
      description: 'Bouncy cushioning is paired with soft yet supportive foam for rest.'
  ),

  Shoe(
      name: 'New Balance 99X',
      price: '200',
      imagePath: 'lib/image/image5.png',
      description: ' Someone wearing sneakers could "sneak up", while someone wearing standards could not.'
  ),
];

  //List of Items in user cart
  List<Shoe> userCart = [];

  //Get list of shoes for sale
  List<Shoe> getShoeList(){
    return shoeShop;
  }

  //Get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //Add item to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //Remove item from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}