import 'package:flutter/material.dart';
import 'home.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp()
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
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0),
                      child: Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75.0),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/picsix.jpeg'),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: IconButton(
                      icon: const Icon(Icons.home),
                      color: Colors.green,
                      iconSize: 35,
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                  'Fares Alzaite',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Jordan, Amman',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey,
                      fontSize: 15.0),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: Text(
                  'Hello, I am Fares. I love code specialty in build apps in flutter ',
                  style: TextStyle(fontFamily: 'Montserrat', fontSize: 17.0),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          '2',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.red,
                              fontSize: 18.0),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey,
                              fontSize: 17),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          '55',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.green,
                              fontSize: 18.0),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey,
                              fontSize: 17),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          '1990',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.blue,
                              fontSize: 18.0),
                        ),
                        Text(
                          'Likes',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.grey,
                              fontSize: 17),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/home3.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/home5.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      height: 130.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/home1.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      height: 130.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/home2.jpeg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      height: 130.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/home4.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.grey.withOpacity(0.2)),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 40.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.green.withOpacity(0.8),
                    ),
                    child: const Center(
                      child: Text(
                        'FOLLOW',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            shadows: [
                              Shadow(
                                blurRadius: 7.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0),
                              )
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
