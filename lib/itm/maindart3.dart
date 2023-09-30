import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart4.dart';

class maindart3 extends StatelessWidget {
  const maindart3({Key? key}) : super(key: key);

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.red,
                  title: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 110, 15, 8),
                        ),
                        child: Center(
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text('Sonu Nigam', style: TextStyle(fontSize: 24)),
                    ],
                  ),
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const maindart4()),
                          );
                        },
                        child: Text('Play'),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Pause'),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text('Music'),
        ),
      ),
    );
  }
}
