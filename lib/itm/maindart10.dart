import 'package:flutter/material.dart';

void main() {
  runApp(maindart10());
}

class maindart10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;

  Future<void> fetchData() async {
    setState(() {
      isLoading = true;
    });

    await Future.delayed(Duration(seconds: 3));

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Пример с Progress Loader'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            isLoading
                ? CircularProgressIndicator()
                : Text(
                    'Данные загружены!',
                    style: TextStyle(fontSize: 20),
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchData,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
