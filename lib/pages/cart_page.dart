import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/My_cartTile.dart';
import 'package:flutter_application_1/components/Mybuttons.dart';
import 'package:flutter_application_1/model/restaurant.dart';
import 'package:flutter_application_1/pages/payement_page.dart';
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
          actions: [
            //clear allcart
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text("vous vous appreter a vider le pagner"),
                            actions: [
                              //cancel
                              TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("annuler")),
                              //confirm
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Restaurant.clearCart();
                                  },
                                  child: Text("confirmer")),
                            ],
                          ));
                },
                icon: Icon(Icons.delete))
          ],
        ),
        body: Column(
          children: [// list des pagner
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty
                      ? Expanded(child: Center(child: const Text("pagner vide..")))
                      : Expanded(
                          child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                //ondividualcar item
                                final CartItem = userCart[index];
              
                                return MyCartTile(
                                  cartItem: CartItem,
                                );
                              }))
                ],
              ),
            ),
            //payer
             Mybuttons(onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>PaymentPage() )), text: "Payer"),
            const SizedBox(height: 25,)
          ],
        ),
      );
    });
  }
}
