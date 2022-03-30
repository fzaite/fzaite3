import 'package:flutter/material.dart';
import 'package:fzaite3/chefprofile.dart';
import 'package:fzaite3/fruits.dart';
import 'food.dart';
import 'travel.dart';
import 'profile.dart';
import 'request.dart';
import 'personal.dart';
import 'login.dart';
import 'foodrec.dart';
import 'cake.dart';
import 'furniture.dart';
import 'stats.dart';
import 'productdescription.dart';
import 'shopping.dart';
import 'cleandesigns.dart';
import 'fashion.dart';
import 'chefprofile.dart';
import 'hairstylist.dart';
import 'takeaway.dart';
import 'simple.dart';
import 'fruits.dart';
import 'myprofile.dart';
import 'carservice.dart';
import 'rentalcar.dart';
import 'home2.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/food': (BuildContext context) {
          return const Food();
        },
        '/travel': (BuildContext context) => const Travel(),
        '/card': (BuildContext context) => const Profile(),
        '/request': (BuildContext context) => const Request(),
        '/profile': (BuildContext context) => const Profilee(),
        '/sgin': (BuildContext context) => const Login(),
        '/fo': (BuildContext context) => const Fo(),
        '/cake': (BuildContext context) => const Cake(),
        '/furniture': (BuildContext context) => const Furniture(),
        '/stats': (BuildContext context) => const Stats(),
        '/Product_Description': (BuildContext context) =>
            const ProductDescription(),
        '/shopping': (BuildContext context) => const Shopping(),
        '/Cleandesigns': (BuildContext context) => const Cleandesigns(),
        '/Fashion': (BuildContext context) => const Fashion(),
        '/chef': (BuildContext context) => const Chef(),
        '/Hairstylist': (BuildContext context) => const Hairstylist(),
        '/takeaway': (BuildContext context) => const Takeaway(),
        '/simple': (BuildContext context) => const Simple(),
        '/Fruits': (BuildContext context) => const Fruits(),
        '/myprofile': (BuildContext context) => const Myprofile(),
        '/car': (BuildContext context) => const Car(),
        '/Rental': (BuildContext context) => const Rental(),
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
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
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
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('assets/images/bb1.png'),
                        )),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 10.0, top: 20.0, bottom: 23),
                        child: Text(
                          'You Can Choose Any Project You Want To Start It :',
                          style: TextStyle(
                            fontFamily: 'Fredoka',
                            fontSize: 17.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF5D17AD),
                            shadows: [
                              Shadow(
                                blurRadius: 7.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                const Home2(),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/stats');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Stats",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
                  color: const Color(0xFF5D17AD),
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Product_Description');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Product Description",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Fredoka',
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/shopping');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Shopping Cart",
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
                  color: const Color(0xFF5D17AD),
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Cleandesigns');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Clean Designs",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Fredoka',
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Fashion');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Fashion designs",
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
                  color: const Color(0xFF5D17AD),
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/chef');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Chef Profile",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Fredoka',
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Hairstylist');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Hair Stylist",
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
                  color: const Color(0xFF5D17AD),
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/takeaway');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Takeaway ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Fredoka',
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/simple');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Simple App",
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
                  color: const Color(0xFF5D17AD),
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Fruits');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Fruits ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Fredoka',
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/myprofile');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "My Profile",
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
                ]),
                const SizedBox(height: 5.0),
                Container(
                  height: 2.0,
                  width: w * 0.86,
                  color: const Color(0xFF5D17AD),
                ),
                Row(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/car');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Car Service",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: 'Fredoka',
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/Rental');
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
                      child: Container(
                        constraints:
                            BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
                        alignment: Alignment.center,
                        child: const Text(
                          "Rental Cars",
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
                ]),
                const SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.only(left: w / 2.9, top: 12),
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.purple[900],
                  child: const Text(
                    'Fares Alzaite',
                    style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Fredoka',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 7.0,
                          color: Colors.black,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ));
  }
}
