import 'package:flutter/material.dart';
import '../home_page/home.dart';
import 'details.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp(),
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/images/pic4.jpeg',
                  fit: BoxFit.cover, height: 400.0),
              Center(
                child: Column(
                  children: <Widget>[
                    Positioned(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: const Icon(Icons.home),
                          color: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/home');
                          },
                          iconSize: 35,
                        ),
                      ),
                    ),
                    const SizedBox(height: 140.0),
                    const Text(
                      'Louis W. & A.P.C',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                    const Text(
                      'Drop a Chic Selection of Outerwear',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    const SizedBox(height: 7.0),
                    const Text(
                      'for 2019 Spring/Summer',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w200),
                    ),
                    const SizedBox(height: 50.0),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const DetailInfo()));
                      },
                      mini: true,
                      elevation: 0.0,
                      backgroundColor: Colors.white,
                      child: const Center(
                          child:
                              Icon(Icons.arrow_forward, color: Colors.black)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Image.asset('assets/images/pic5.jpeg',
                  fit: BoxFit.cover, height: 400.0)
            ],
          ),
        ],
      ),
    );
  }
}
