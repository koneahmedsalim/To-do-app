import 'package:flutter/material.dart';

class PayementPage extends StatefulWidget {
  const PayementPage({super.key});

  @override
  State<PayementPage> createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(        backgroundColor: Theme.of(context).colorScheme.background,

      appBar: AppBar(
        backgroundColor:Colors.transparent ,
        title: Text("valider"),
        
      ),
    );
  }
}