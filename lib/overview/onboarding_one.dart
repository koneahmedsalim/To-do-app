import 'package:flutter/material.dart';
import 'package:flutter_application_1/authentifications/login_or_register.dart';

class OnboardingOne extends StatelessWidget {
  const OnboardingOne({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Fond en blanc
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/images/chef.png', // Replace with your actual image path
            ),
            const Column(
              children: [
                Text(
                  "Bienvenue à l'Hotel IXORA de San-Pédro",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 230, 177, 20),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginOrRegister(),
                      ),
                    );
                  },
                  child: const Text(
                    'Suivant',
                    style: TextStyle(
                      color: Color.fromARGB(255, 230, 177, 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}