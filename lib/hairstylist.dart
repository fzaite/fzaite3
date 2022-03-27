import 'package:flutter/material.dart';
import 'home.dart';

class Hairstylist extends StatelessWidget {
  const Hairstylist({Key? key}) : super(key: key);

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
  var selectedDate = 18;
  var selectedBarber = 'Jonathan';
  var selectedTime = '12:30';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.white,
        title: const Text(
          'Booking',
          style: TextStyle(
              fontFamily: 'FirSans', fontSize: 25.0, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            icon: const Icon(Icons.home),
            color: Colors.black,
            iconSize: 30,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4.0)
                ], color: Colors.white),
              ),
              Positioned(
                top: 20.0,
                left: 15.0,
                right: 15.0,
                child: SizedBox(
                  height: 60.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      getDate(18, 'Tue'),
                      const SizedBox(width: 45.0),
                      getDate(19, 'Wed'),
                      const SizedBox(width: 45.0),
                      getDate(20, 'Thu'),
                      const SizedBox(width: 45.0),
                      getDate(21, 'Fri'),
                      const SizedBox(width: 45.0),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 35.0),
          Center(
            child: Text(
              'Hagorapt',
              style: TextStyle(
                  letterSpacing: 2.0,
                  fontFamily: 'Nunito',
                  fontSize: 30.0,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            children: <Widget>[
              const SizedBox(width: 15.0),
              getService('Beards', 50),
              getService('Crew Cut', 15)
            ],
          ),
          const SizedBox(height: 15.0),
          SizedBox(
              height: 175.0,
              child: ListView(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  getBarber('assets/images/style2.jpg', 'Anton'),
                  const SizedBox(width: 15.0),
                  getBarber('assets/images/style1.jpg', 'Jonathan'),
                  const SizedBox(width: 15.0),
                  getBarber('assets/images/style3.jpeg', 'Jim'),
                  const SizedBox(width: 15.0),
                ],
              )),
          const SizedBox(height: 20.0),
          SizedBox(
            height: 50.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getTime('11.00'),
                const SizedBox(width: 35.0),
                getTime('12.30'),
                const SizedBox(width: 35.0),
                getTime('13.30'),
                const SizedBox(width: 35.0),
                getTime('15.00'),
                const SizedBox(width: 35.0)
              ],
            ),
          ),
          const SizedBox(height: 125.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: Colors.black),
                child: const Center(
                  child: Text(
                    'BOOK',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontFamily: 'FirSans',
                        fontSize: 17.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color switchTimeColor(time) {
    if (time == selectedTime) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchTimeContentColor(time) {
    if (time == selectedTime) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  Widget getTime(time) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: switchTimeColor(time)),
      height: 50.0,
      width: 75.0,
      child: InkWell(
        onTap: () {
          selectTime(time);
        },
        child: Center(
          child: Text(
            time,
            style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
                color: switchTimeContentColor(time)),
          ),
        ),
      ),
    );
  }

  Widget getBarber(String imgPath, String name) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            InkWell(
              onTap: () {
                selectBarber(name);
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: getSelectedBarber(name)),
              ),
            )
          ],
        ),
        const SizedBox(height: 7.0),
        Text(
          name,
          style: const TextStyle(fontFamily: 'FirSans', fontSize: 15.0),
        )
      ],
    );
  }

  selectBarber(name) {
    setState(() {
      selectedBarber = name;
    });
  }

  Color getSelectedBarber(name) {
    // ignore: avoid_print
    print(selectedBarber);
    // ignore: avoid_print
    print(selectedDate);
    // ignore: avoid_print
    print(selectedTime);
    if (name == selectedBarber) {
      return Colors.red.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  Widget getService(String name, int price) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        children: <Widget>[
          Text(
            name,
            style: const TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Colors.black),
          ),
          const SizedBox(width: 5.0),
          Text(
            '\$' + price.toString(),
            style: const TextStyle(
                fontFamily: 'Nunito', fontSize: 17.0, color: Colors.grey),
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget getDate(int date, String day) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: switchColor(date)),
      width: 60.0,
      height: 60.0,
      child: InkWell(
        onTap: () {
          selectDate(date);
        },
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 7.0),
              Text(
                date.toString(),
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: switchContentColor(date)),
              ),
              Text(
                day,
                style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 15.0,
                    color: switchContentColor(date)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color switchColor(date) {
    if (date == selectedDate) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor(date) {
    if (date == selectedDate) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  selectDate(date) {
    setState(() {
      selectedDate = date;
    });
  }
}
