import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/My_quanity_selector.dart';
import 'package:flutter_application_1/model/cart_item.dart';
import 'package:flutter_application_1/model/restaurant.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
        ),
        child: Column(
          children: [
            Row(children: [
              // Food image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  cartItem.food.imagePath,
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(width: 10),
              // Name and price
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartItem.food.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  //price

                  SizedBox(height: 5),
                  Text(
                    'fcfa' + cartItem.food.price.toString(),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              //augmenter diminuer item
              MyQuanitySelector(quantity: cartItem.quantity, food: cartItem.food, onIncrement: (){
                restaurant.addToCart(cartItem.food,cartItem.selectedAddons);
              }, onDecrement: (){
                restaurant.removeFromCart(cartItem);
              })
            ])
          ],
        ),
      ),
    );
  }
}
