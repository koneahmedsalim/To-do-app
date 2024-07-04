import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cart_item.dart';
import 'package:flutter_application_1/model/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, Restaurant, child) {
      //cart
      final userCart = Restaurant.cart;
      //scaffold
      return Scaffold(
        appBar: AppBar(
          title: Text("pagner"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      //ondividualcar item
                      final CartItem = userCart[index];

                      return  ListTile(
                          title: Text(CartItem.food.name),
                        );
                    }
                    ))
          ],
        ),
      );
    });
  }
}
