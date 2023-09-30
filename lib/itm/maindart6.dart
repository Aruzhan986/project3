import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart7.dart';

class maindart6 extends StatelessWidget {
  const maindart6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
          ),
        ),
      ),
      title: 'Kindacode.com',
      home: HobbySelectionScreen(),
    );
  }
}

class HobbySelectionScreen extends StatefulWidget {
  @override
  _HobbySelectionScreenState createState() => _HobbySelectionScreenState();
}

class _HobbySelectionScreenState extends State<HobbySelectionScreen> {
  List<String> selectedHobbies = [];

  void _toggleHobby(String hobby) {
    setState(() {
      if (selectedHobbies.contains(hobby)) {
        selectedHobbies.remove(hobby);
      } else {
        selectedHobbies.add(hobby);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Choose your hobbies:',
              style: TextStyle(fontSize: 18.0),
            ),
            CheckboxListTile(
              title: Text('Football'),
              value: selectedHobbies.contains('Football'),
              onChanged: (_) => _toggleHobby('Football'),
            ),
            CheckboxListTile(
              title: Text('Baseball'),
              value: selectedHobbies.contains('Baseball'),
              onChanged: (_) => _toggleHobby('Baseball'),
            ),
            CheckboxListTile(
              title: Text('Video Games'),
              value: selectedHobbies.contains('Video Games'),
              onChanged: (_) => _toggleHobby('Video Games'),
            ),
            CheckboxListTile(
              title: Text('Readding Books'),
              value: selectedHobbies.contains('Readding Books'),
              onChanged: (_) => _toggleHobby('Readding Books'),
            ),
            CheckboxListTile(
              title: Text('Surfling The Internet'),
              value: selectedHobbies.contains('Surfling The Internet'),
              onChanged: (_) => _toggleHobby('Surfling The Internet'),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Surfling The Internet'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const maindart7()),
                    );
                  },
                  child: Text('Следующая страница'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
