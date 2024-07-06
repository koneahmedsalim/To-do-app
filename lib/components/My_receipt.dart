import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyReceipt extends StatelessWidget {
  const MyReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25, top: 25),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("merci d'avoir commander"),
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary),
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(25),
                child: Consumer<Restaurant>(
                    builder: (context, Restaurant, child) =>
                        Text(Restaurant.displayCartReceipt()))),
            SizedBox(
              height: 25,
            ),
            Text("temp de livraison estimer: 18:25")
          ],
        ),
      ),
    );
  }
}
