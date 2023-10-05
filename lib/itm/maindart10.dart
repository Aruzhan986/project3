import 'package:flutter/material.dart';

void main() {
  runApp(maindart10());
}

class maindart10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoaderScreen(),
    );
  }
}

class LoaderScreen extends StatefulWidget {
  @override
  _LoaderScreenState createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loader'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
