import 'package:flutter/material.dart';
import 'view/home_page/home.dart';

class Chef extends StatelessWidget {
  const Chef({Key? key}) : super(key: key);

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
        children: [
          Stack(
            children: [
              const SizedBox(
                height: 350.0,
                width: double.infinity,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                color: const Color(0xfffa624f),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {},
                  color: Colors.white,
                  iconSize: 30,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  color: Colors.white,
                  iconSize: 30,
                ),
              ),
              Positioned(
                top: 125,
                left: 15,
                right: 15,
                child: Material(
                  elevation: 3.0,
                  borderRadius: BorderRadius.circular(7.0),
                  child: Container(
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 75.0,
                left: MediaQuery.of(context).size.width / 2 - 50.0,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/chris.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Positioned(
                top: 190.0,
                left: (MediaQuery.of(context).size.width / 2) - 105.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Chris Pratt',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                    const SizedBox(height: 7.0),
                    const Text(
                      'China',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        // ignore: deprecated_member_use
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          color: const Color(0xFFFA624F),
                          onPressed: () {},
                          child: const Text(
                            'Message',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        // ignore: deprecated_member_use
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          color: Colors.grey,
                          onPressed: () {},
                          child: const Text(
                            'Following',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Menu',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Column(
            children: [
              menuCard('Berry Banana milkshake',
                  'assets/images/bananaberry.jpeg', 'Breakfast', 4, 2.8, 1.2),
              const SizedBox(height: 12.0),
              menuCard('Fruit pancake', 'assets/images/fruitbreak.jpeg',
                  'Breakfast', 4, 4.2, 2.8),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Work',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 5.0),
            child: SizedBox(
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  getWorks('assets/images/fruitpancake.jpeg'),
                  getWorks('assets/images/dumplings.jpeg'),
                  getWorks('assets/images/noodles.jpeg'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Work',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget getWorks(String imgPath) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Container(
      height: 100.0,
      width: 125,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.0),
          image:
              DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
    ),
  );
}

Widget menuCard(String title, String imgPath, String type, int rating,
    double views, double likes) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
    child: Material(
      borderRadius: BorderRadius.circular(7.0),
      elevation: 4.0,
      child: Container(
        height: 125.0,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: Colors.white),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10.0),
            Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(7.0)),
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15.0),
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 7.0),
                Text(
                  type,
                  style: const TextStyle(
                      fontFamily: 'Comfortaa',
                      color: Colors.grey,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 7.0),
                Row(
                  children: <Widget>[
                    getStar(rating, 1),
                    getStar(rating, 2),
                    getStar(rating, 3),
                    getStar(rating, 4),
                    getStar(rating, 5)
                  ],
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: <Widget>[
                    Icon(Icons.remove_red_eye,
                        color: Colors.grey.withOpacity(0.4)),
                    const SizedBox(width: 3.0),
                    Text(views.toString()),
                    const SizedBox(width: 10.0),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 3.0),
                    Text(likes.toString())
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget getStar(rating, index) {
  if (rating >= index) {
    return const Icon(Icons.star, color: Colors.yellow);
  } else {
    return Icon(Icons.star, color: Colors.grey.withOpacity(0.5));
  }
}
