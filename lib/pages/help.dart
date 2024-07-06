import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackForm(),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _formKey = GlobalKey<FormState>();
  String _feedbackType = 'Commentaires';
  String _feedback = '';
  String _firstName = '';
  String _lastName = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulaire d'avis clients"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Text(
                "Nous serions ravis de connaitre votre avis pour nous aider à améliorer notre service !",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text("Type d'avis"),
              RadioListTile(
                title: Text('Commentaires'),
                value: 'Commentaires',
                groupValue: _feedbackType,
                onChanged: (value) {
                  setState(() {
                    _feedbackType = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Constat de bugs'),
                value: 'Constat de bugs',
                groupValue: _feedbackType,
                onChanged: (value) {
                  setState(() {
                    _feedbackType = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Questions'),
                value: 'Questions',
                groupValue: _feedbackType,
                onChanged: (value) {
                  setState(() {
                    _feedbackType = value!;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Expliquez nous votre retour'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer un retour';
                  }
                  return null;
                },
                onSaved: (value) {
                  _feedback = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Prénom'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre prénom';
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nom de famille'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre nom de famille';
                  }
                  return null;
                },
                onSaved: (value) {
                  _lastName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Veuillez entrer votre e-mail';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Handle the form submission logic here
                    print('Type d\'avis: $_feedbackType');
                    print('Retour: $_feedback');
                    print('Prénom: $_firstName');
                    print('Nom de famille: $_lastName');
                    print('E-mail: $_email');
                  }
                },
                child: Text('Soumettre'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}