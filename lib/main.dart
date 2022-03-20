import 'package:flutter/material.dart';
import 'food.dart';
import 'travel.dart';

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
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 35,
            onPressed: () {},
          ),
          title: const Center(
              child: Text('My App',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white))),
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                    iconSize: 35,
                    onPressed: () {}))
          ],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/food');
                      },
                      child: const Text(
                        'FOOD',
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            backgroundColor: Colors.red),
                      ))
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(55.0, 100.0, 55.0, 40.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Container(
                        padding:
                            const EdgeInsets.fromLTRB(55.0, 0.0, 55.0, 40.0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/travel');
                                },
                                child: const Text(
                                  'TRAVEL',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      backgroundColor: Colors.red),
                                ))
                          ],
                        )),
                  ],
                ),
              )
            ]));
  }
}
