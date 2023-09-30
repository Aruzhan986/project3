import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart8.dart';

class maindart7 extends StatelessWidget {
  const maindart7({Key? key}) : super(key: key);

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
      home: GenderSelection(),
    );
  }
}

class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String selectedGender = '';

  void handleGenderChange(String value) {
    setState(() {
      selectedGender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Please let us know your gender',
            style: TextStyle(fontSize: 18.0),
          ),
          RadioListTile<String>(
            title: Text('Male'),
            value: 'Male',
            groupValue: selectedGender,
            onChanged: (value) => handleGenderChange(value!),
          ),
          RadioListTile<String>(
            title: Text('Female'),
            value: 'Female',
            groupValue: selectedGender,
            onChanged: (value) => handleGenderChange(value!),
          ),
          SizedBox(height: 20.0),
          Text(
            selectedGender.isEmpty
                ? 'Выберите гендер'
                : 'hello $selectedGender',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const maindart8()),
              );
            },
            child: Text('Следующая страница'),
          ),
        ],
      ),
    );
  }
}
