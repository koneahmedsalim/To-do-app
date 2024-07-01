import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/MyDrawerTile.dart';
import 'package:flutter_application_1/pages/settings_Page.dart';

class MyDrawers extends StatelessWidget {
  const MyDrawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:Colors.grey.shade700,
      child: Column(children: [
        //logo lola
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: SizedBox(
            child: Image.asset(""),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Divider(),
        ),

        //home
        Mydrawertile(text: "Home", icon: Icons.home, onTap: () => Navigator.pop(context)),
        

        //paramettres
               Mydrawertile(
            text: "Paramettres",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
                Spacer(),

        //deco
                Mydrawertile(text: "deconnexion", icon: Icons.logout, onTap: () {  },),

      
      ],),
    );
  }
}