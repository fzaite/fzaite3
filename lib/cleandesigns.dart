import 'package:flutter/material.dart';
import 'home.dart';

class Cleandesigns extends StatelessWidget {
  const Cleandesigns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const MyApp(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            'EXPLORE',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.home),
            color: Colors.black,
            iconSize: 27.0,
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              iconSize: 27.0,
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.orange,
              ),
            )
          ],
        ));
  }
}
