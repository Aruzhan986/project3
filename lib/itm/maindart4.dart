import 'package:flutter/material.dart';
import 'package:flutter_aru2/itm/maindart5.dart';

class maindart4 extends StatelessWidget {
  const maindart4({Key? key}) : super(key: key);

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Меню'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: toggleMenu,
                  child: Text('Mеню'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const maindart5()),
                    );
                  },
                  child: Text('Следующая страница'),
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            top: 0,
            left: isMenuOpen ? 0 : -150,
            child: Container(
              width: 150,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                  ),
                  SizedBox(height: 20),
                  const Text(
                    'Ваше ФИО',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    'Ваша почта',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  const Icon(
                    Icons.account_circle,
                    size: 60,
                    color: Colors.white,
                  ),
                  const Text(
                    'О себе',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  const Icon(
                    Icons.settings,
                    size: 60,
                    color: Colors.white,
                  ),
                  const Text(
                    'Настройки',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
