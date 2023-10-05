import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart10.dart';

void main() {
  runApp(maindart11());
}

class maindart11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter DataTable'),
      ),
      body: Column(
        children: [
          DataTable(
            columns: <DataColumn>[
              DataColumn(
                label: Text('Имя'),
              ),
              DataColumn(
                label: Text('Возраст'),
              ),
              DataColumn(
                label: Text('Город'),
              ),
            ],
            rows: <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('John')),
                  DataCell(Text('30')),
                  DataCell(Text('New York')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Alice')),
                  DataCell(Text('25')),
                  DataCell(Text('Los Angeles')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Bob')),
                  DataCell(Text('35')),
                  DataCell(Text('Chicago')),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => maindart10()),
              );
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
