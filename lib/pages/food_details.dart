import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/food.dart';

class FoodDetails extends StatefulWidget {
  final Food food;
  const FoodDetails({super.key, required this.food});

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}
//error
class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //imag de nourriture
          Image.asset(widget.food.imagePath),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //name
                Text(
                  widget.food.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //price
                Text(
                  widget.food.price.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(
                  height: 10,
                ),

                //descript
                Text(
                  widget.food.description,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "extra",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                SizedBox(
                  height: 10,
                ),
                //addons
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        // recuperer les extras individuellement*
                        Addon addon = widget.food.availableAddons[index];
                        //retourner/montrer les cheikbox
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(addon.price.toString()),
                          value: false,
                          onChanged: (value) {},
                        );
                      }),
                )
              ],
            ),
          )
          //boutton ajouter
        ],
      ),
    );
  }
}
