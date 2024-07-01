import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Mybuttons.dart';
import 'package:flutter_application_1/model/food.dart';

class FoodDetails extends StatefulWidget {
  final Food food;
  final Map<Addon,bool> selectedAddons={};

   FoodDetails({super.key, required this.food})
{
//initialise les extra  a faux 
for (Addon addon in food.availableAddons){
  selectedAddons[addon]=false;
}
}
  @override
  State<FoodDetails> createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //scaffold
        Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
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
                            subtitle: Text('\fcfa${addon.price}',style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon]=value!;
                              });
                            },
                          );
                        }),
                  )
                ],
              ),
            ),
            //boutton ajouter
            Mybuttons(onTap: (){}, text: "Add to cart "),

            SizedBox(height: 25,)
          ],
        ),
      ),
    ),
        //retour button
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,shape: BoxShape.circle),
              child: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context),)
            ),
          ),
        )
      ],
    );
  }
}
