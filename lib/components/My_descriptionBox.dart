import 'package:flutter/material.dart';

class MyDescriptionbox extends StatelessWidget {
  const MyDescriptionbox({super.key});

  @override
  Widget build(BuildContext context) {
    //css
    var myPrimaryTextstyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mysecondaryTextstyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //temps de livraison
            Column(
              children: [
                Text(
                  '6000 fcfa',
                  style: myPrimaryTextstyle,
                ),
                Text(
                  'prix ',
                  style: mysecondaryTextstyle,
                ),
              ],
            ),
            //prix de livraion
            Column(
              children: [
                Text(
                  '15-30 min',
                  style: myPrimaryTextstyle,
                ),
                Text(
                  'temps de livraison',
                  style: mysecondaryTextstyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
