import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/Mybuttons.dart';
import 'package:flutter_application_1/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

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
          MyTextfield(
              controller: confirmpasswordController,
              hintText: "confirmer le Mots de passe",
              obscureText: true),
          SizedBox(
            height: 10,
          ),
          Mybuttons(onTap: () {}, text: "S'inscrire"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("vous avez deja un compte?"),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "connectez-vous maintenant!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
