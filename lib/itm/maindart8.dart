import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart9.dart';

class maindart8 extends StatelessWidget {
  const maindart8({Key? key}) : super(key: key);

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
      title: 'Snackbar Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(seconds: 3),
      action: SnackBarAction(
        label: 'Закрыть',
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _showSnackbar(context, 'Hey, This is Snackbar message');
              },
              child: Text('Show Snackbar'),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maindart9()),
                );
              },
              child: Text('Следующая страница'),
            ),
          ],
        ),
      ),
    );
  }
}
