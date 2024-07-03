// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/MyDrawerTile.dart';
import 'package:flutter_application_1/pages/reservations.dart';
import 'package:flutter_application_1/pages/settings_Page.dart';

class MyDrawers extends StatelessWidget {
  const MyDrawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade700,
      child: Column(
        children: [
          //logo lola
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SizedBox(
              child: Image.asset("assets/images/logo1.png"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Divider(),
          ),

          //home
          Mydrawertile(
              text: "Home",
              icon: Icons.home,
              onTap: () => Navigator.pop(context)),
          //commande
          Mydrawertile(
              text: "commande",
              icon: Icons.delivery_dining,
              onTap: () => Navigator.pop(context)),
          //reserve
          Mydrawertile(
              text: "reservations",
              icon: Icons.room_service_sharp,
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TableBookingScreen()), // Navigate to TableBookingScreen
                );
              }),

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
          const Spacer(),

          //deco
          Mydrawertile(
            text: "deconnexion",
            icon: Icons.logout,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
