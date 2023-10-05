import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart6.dart';

class maindart5 extends StatelessWidget {
  const maindart5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Basic List'),
        ),
        body: Row(
          children: <Widget>[
            Container(
              width: 80.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.map),
                    onPressed: () {},
                    tooltip: 'Карта',
                  ),
                  IconButton(
                    icon: Icon(Icons.photo_album),
                    onPressed: () {},
                    tooltip: 'Альбом',
                  ),
                  IconButton(
                    icon: Icon(Icons.phone),
                    onPressed: () {},
                    tooltip: 'Телефон',
                  ),
                  IconButton(
                    icon: Icon(Icons.contacts),
                    onPressed: () {},
                    tooltip: 'Контакт',
                  ),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                    tooltip: 'Настройки',
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const maindart6()),
                    );
                  },
                  child: Text('Next'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
