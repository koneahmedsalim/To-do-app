// table_booking_screen.dart
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
        title: Text('All Tables'),
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
            return TableTile(tableInfo: tables[index]);
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
                '${tableInfo.people} People',
                style: TextStyle(color: Colors.grey),
              ),
          ],
        ),
      ),
    );
  }
}
