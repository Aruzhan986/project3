import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart3.dart';

class maindart2 extends StatelessWidget {
  const maindart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: null,
          actions: <Widget>[
            Expanded(
              child: TransportButton(
                icon: Icons.train,
                label: 'Train',
              ),
            ),
            Expanded(
              child: TransportButton(
                icon: Icons.directions_bike,
                label: 'Bike',
              ),
            ),
            Expanded(
              child: TransportButton(
                icon: Icons.directions_boat,
                label: 'Boat',
              ),
            ),
            Expanded(
              child: TransportButton(
                icon: Icons.directions_bus,
                label: 'Bus',
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const maindart3()),
                  );
                },
                child: Text('Следующая страница'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransportButton extends StatelessWidget {
  final IconData icon;
  final String label;

  TransportButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(icon),
          onPressed: () {
            print('$label button pressed');
          },
        ),
        Text(label),
      ],
    );
  }
}
