import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/components/Mybuttons.dart';
import 'package:flutter_application_1/pages/Delivery_page.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PayementPage extends StatefulWidget {
  const PayementPage({super.key});

  @override
  State<PayementPage> createState() => _PayementPageState();
}

class _PayementPageState extends State<PayementPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool iSCvvFocused = false;
  //methode payeer
  void userTappedpay() {
    if (formKey.currentState!.validate()) {
      //
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("confirmer"),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text('Numéro de carte: $cardNumber'),
                      Text('Date d\'expiration: $expiryDate'),
                      Text('Nom du titulaire: $cardHolderName'),
                      Text('CVV: $cvvCode'),
                    ],
                  ),
                ),
                actions: [
                  //annuler

                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("yes")),

                  //confirmer

                  TextButton(
                      onPressed: () {Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeliveryPage()));
                      },
                      child: Text("yes"))
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("valider"),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          //cart de credit
          CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: iSCvvFocused,
              onCreditCardWidgetChange: (p0) {}),
          //credit form
          CreditCardForm(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expiryDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              },
              formKey: formKey),
          Spacer(),
          Mybuttons(onTap: userTappedpay, text: "regler Maintenant"),
          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
