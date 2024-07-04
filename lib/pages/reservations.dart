import 'package:flutter/material.dart';

class TableBookingScreen extends StatelessWidget {
  final List<TableInfo> tables = [
    TableInfo(1, 2),
    TableInfo(2, null),
    TableInfo(3, null),
    TableInfo(4, 10),
    TableInfo(5, null),
    TableInfo(6, null),
    TableInfo(7, null),
    TableInfo(8, null),
    TableInfo(9, 12),
    TableInfo(10, null),
    TableInfo(11, 2),
    TableInfo(12, 4),
    TableInfo(13, 3),
    TableInfo(14, null),
    TableInfo(15, null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table pour réservation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: tables.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ReservationFormDialog(tableInfo: tables[index]);
                  },
                );
              },
              child: TableTile(tableInfo: tables[index]),
            );
          },
        ),
      ),
    );
  }
}

class TableInfo {
  final int number;
  final int? people;

  TableInfo(this.number, this.people);
}

class TableTile extends StatelessWidget {
  final TableInfo tableInfo;

  TableTile({required this.tableInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Table ${tableInfo.number}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            if (tableInfo.people != null)
              Text(
                '${tableInfo.people} personnes',
                style: TextStyle(color: Color.fromARGB(255, 230, 177, 20),),
              ),
          ],
        ),
      ),
    );
  }
}

class ReservationFormDialog extends StatefulWidget {
  final TableInfo tableInfo;

  ReservationFormDialog({required this.tableInfo});

  @override
  _ReservationFormDialogState createState() => _ReservationFormDialogState();
}

class _ReservationFormDialogState extends State<ReservationFormDialog> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _peopleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Formulaire de Reservation - Table ${widget.tableInfo.number}'),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nom :',
              ),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Numéro de téléphone :',
              ),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              controller: _peopleController,
              decoration: InputDecoration(
                labelText: 'Nombre de personne :',
              ),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Annuler',
            style: TextStyle(color: Color.fromARGB(255, 230, 177, 20)),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Button background color
            side: BorderSide(color: Color.fromARGB(255, 230, 177, 20)), // Border color
          ),
          onPressed: () {
            // Handle form submission
            print('Réservation pour la table ${widget.tableInfo.number}');
            print('Nom : ${_nameController.text}');
            print('Numéro de telphone : ${_phoneController.text}');
            print('nombre de personne(s) : ${_peopleController.text}');
            Navigator.of(context).pop();
          },
          child: Text(
            'Reserver',
            style: TextStyle(color: Color.fromARGB(255, 230, 177, 20)), // Text color
          ),
        ),
      ],
    );
  }
}