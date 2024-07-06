import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Mybuttons.dart';
import 'package:flutter_application_1/model/food.dart';
import 'package:flutter_application_1/model/restaurant.dart';
import 'package:provider/provider.dart';

class FoodDetails extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodDetails({super.key, required this.food}) {
    // Initialiser les extras à faux
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  // Méthode addToCart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    // Fermer pour revenir au menu
    Navigator.pop(context);

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }

    // Ajouter au panier
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image de nourriture
            Image.asset(widget.food.imagePath),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nom
                  Text(
                    widget.food.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  // Prix
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
                  // Description
                  Text(
                    widget.food.description,style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Extras",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Addons
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
                          // Récupérer les extras individuellement
                          Addon addon = widget.food.availableAddons[index];
                          // Retourner/montrer les checkboxes
                          return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text(
                              '\fcfa${addon.price}',
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary),
                            ),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            },
                          );
                        }),
                  ),
                ],
              ),
            ),
            // Bouton ajouter
            Mybuttons(
              onTap: () => addToCart(widget.food, widget.selectedAddons),
              text: "Add to cart",
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
