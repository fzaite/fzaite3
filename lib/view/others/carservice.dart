import 'package:flutter/material.dart';
import '../home_page/home.dart';
import 'rentalcar.dart';

class Car extends StatelessWidget {
  const Car({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp(),
        '/Rental': (BuildContext context) => const Rental()
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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.only(left: 15.0, top: 45),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Icon(
                  Icons.camera_alt,
                  color: Color(0xffeeb139),
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  'Your Current Vehicle',
                  style: TextStyle(
                      color: const Color(0xFF434C68).withOpacity(0.7),
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cabin',
                      letterSpacing: 0.05),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Image.asset('assets/images/porsche.png',
                  fit: BoxFit.cover,
                  height: 175.0,
                  width: MediaQuery.of(context).size.width - 30.0),
              const Text(
                'PORSCHE',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                '2019 - 911 CARRERA S',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF434C68)),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: const Color(0xFF434C68).withOpacity(0.4),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.card_travel,
                          color: const Color(0xFF434C68).withOpacity(0.4),
                        ),
                        const SizedBox(height: 5.0),
                        const Text(
                          '19/24',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.timer,
                          color: const Color(0xFF434C68).withOpacity(0.4),
                        ),
                        const SizedBox(height: 5.0),
                        const Text(
                          '3.2',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      children: <Widget>[
                        Icon(Icons.network_cell,
                            color: const Color(0xFF434C68).withOpacity(0.4)),
                        const SizedBox(height: 5.0),
                        const Text(
                          '443',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 0.75,
                width: MediaQuery.of(context).size.width - 30.0,
                color: const Color(0xFF434C68).withOpacity(0.4),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.refresh,
                    size: 35,
                    color: const Color(0xFF434C68).withOpacity(0.4),
                  ),
                  const SizedBox(width: 10.0),
                  Text(
                    'EXCHANGE YOUR VEHICLE',
                    style: TextStyle(
                        color: const Color(0xFF434C68).withOpacity(0.7),
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        fontFamily: 'Oswald'),
                  ),
                  const SizedBox(width: 110.0),
                  Icon(Icons.arrow_forward,
                      size: 35.0,
                      color: const Color(0xFF434C68).withOpacity(0.4)),
                ],
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/Rental');
              },
              child: const Tab(
                  icon: Icon(Icons.car_rental,
                      color: Color(0xffeeb139), size: 40.0)),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: const Tab(
                  icon: Icon(Icons.home, color: Color(0xffeeb139), size: 40.0)),
            ),
            const Tab(
                icon: Icon(Icons.navigation,
                    color: Color(0xffeeb139), size: 35.0)),
          ],
        ),
      ),
    );
  }
}
