import 'package:flutter/material.dart';
import 'food.dart';
import 'travel.dart';
import 'profile.dart';
import 'request.dart';
import 'personal.dart';
import 'login.dart';
import 'foodrec.dart';
import 'cake.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/food': (BuildContext context) => const Food(),
        '/travel': (BuildContext context) => const Travel(),
        '/card': (BuildContext context) => const Profile(),
        '/request': (BuildContext context) => const Request(),
        '/profile': (BuildContext context) => const Profilee(),
        '/sgin': (BuildContext context) => const Login(),
        '/fo': (BuildContext context) => const Fo(),
        '/cake': (BuildContext context) => const Cake(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.purple[700],
          elevation: 0.0,
          title: const Center(
              child: Text('HOME PAGE',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 7.0,
                        color: Colors.black,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],
                  ))),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/sgin');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "LogIn & Registration",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/request');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Request",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/card');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Card",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/food');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Resturant",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/travel');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Traveling",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/fo');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Food Recipes",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/cake');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 47, 3, 58),
                        Color.fromARGB(255, 117, 34, 185)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Cakes Catalog",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ])
        ]));
  }
}
