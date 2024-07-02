import 'package:flutter_application_1/components/Mybuttons.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/scaner_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

 void login(){
  //fill out 
  Navigator.push(context, MaterialPageRoute(builder: (context) => ScanerPage(),)
  ); }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock,
            size: 72,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Ixora Hotel',
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
          SizedBox(
            height: 10,
          ),
          MyTextfield(
              controller: emailController,
              hintText: "email",
              obscureText: false),
          SizedBox(
            height: 10,
          ),
          MyTextfield(
              controller: passwordController,
              hintText: "Mots de passe",
              obscureText: true),
          SizedBox(
            height: 10,
          ),
          Mybuttons(onTap: login, text: "Se connecter"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Pas encore de compte?"),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Inscrivez-vous maintenant!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue.shade500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
