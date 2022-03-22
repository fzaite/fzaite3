import 'package:flutter/material.dart';
import 'food.dart';
import 'travel.dart';
import 'profile.dart';
import 'request.dart';
import 'personal.dart';
import 'login.dart';
import 'foodrec.dart';
import 'cake.dart';
import 'furniture.dart';

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
        '/furniture': (BuildContext context) => const Furniture(),
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          elevation: 0.0,
          title: const Center(
              child: Text('HOME PAGE',
                  style: TextStyle(
                    fontFamily: 'Fredoka',
                    fontSize: 28,
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
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
            Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 130.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/bb1.png'),
                          fit: BoxFit.cover)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 13.0, top: 20.0, bottom: 22),
                  child: Text(
                    'You Can Choose Any One You Want To Start It :',
                    style: TextStyle(
                      fontFamily: 'Fredoka',
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5D17AD),
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(0.5, 0.5),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "LogIn & Registration",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Fredoka',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 5.0),
          Container(
            height: 2.0,
            width: 370,
            color: const Color(0xFF5D17AD),
          ),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Request",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Card",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 5.0),
          Container(
            height: 2.0,
            width: 370,
            color: const Color(0xFF5D17AD),
          ),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Resturant",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Traveling",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 5.0),
          Container(
            height: 2.0,
            width: 370,
            color: const Color(0xFF5D17AD),
          ),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Food Recipes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
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
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Cakes Catalog",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          const SizedBox(height: 5.0),
          Container(
            height: 2.0,
            width: 370,
            color: const Color(0xFF5D17AD),
          ),
          Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/furniture');
              },
              child: Container(
                height: 60.0,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 54, 6, 116),
                        Color.fromARGB(255, 111, 23, 182)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15.0)),
                child: Ink(
                  child: Container(
                    constraints:
                        const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: const Text(
                      "Furniture",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Fredoka',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.of(context).pushNamed('/travel');
            //   },
            //   child: Container(
            //     height: 60.0,
            //     margin: const EdgeInsets.all(10),
            //     decoration: BoxDecoration(
            //         gradient: const LinearGradient(
            //           colors: [
            //             Color.fromARGB(255, 47, 3, 58),
            //             Color.fromARGB(255, 117, 34, 185)
            //           ],
            //           begin: Alignment.centerLeft,
            //           end: Alignment.centerRight,
            //         ),
            //         borderRadius: BorderRadius.circular(15.0)),
            //     child: Ink(
            //       child: Container(
            //         constraints:
            //             const BoxConstraints(maxWidth: 185.0, minHeight: 50.0),
            //         alignment: Alignment.center,
            //         child: const Text(
            //           "Traveling",
            //           textAlign: TextAlign.center,
            //           style: TextStyle(color: Colors.white, fontSize: 20),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ]),
          const SizedBox(height: 43.4),
          Container(
            height: 50.0,
            width: 410.5,
            color: Colors.purple[900],
          ),
        ]));
  }
}
