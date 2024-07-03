import 'package:flutter/material.dart';

class MyLocations extends StatelessWidget {
  void openLocationSearchBox(BuildContext context){
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text("votre localisation"),
      content: TextField(
        decoration: InputDecoration(hintText: "localisation...."),
      ),
      actions: [
        //cancel
        MaterialButton(onPressed:() => Navigator.pop(context),
        child: Text('retour'), )
        , //entree
        MaterialButton(onPressed:() => Navigator.pop(context),
        child: Text('entree'), )
      ],
    ),);
  }
  const MyLocations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child:  Column(crossAxisAlignment:CrossAxisAlignment.start,
        children: [
        Text("passer commandes",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        GestureDetector( onTap: () => openLocationSearchBox(context),
          child: Row(children: [
            //address
            Text("Ixora hotel"),
            //menue descend
            Icon(Icons.keyboard_arrow_down_rounded)
          ],),
        )
      ],),
    );
  }
}