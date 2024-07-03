import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const Mybuttons({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container( padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
    
decoration: BoxDecoration(
  color:Theme.of(context).colorScheme.secondary,         borderRadius: BorderRadius.all(Radius.circular(20))),

        child: Center(
          child: Text(text, style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
