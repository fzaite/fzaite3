import 'package:flutter/material.dart';
import 'package:fzaite3/view/home_page/home.dart';
import 'carservice.dart';
import '../home_page/home.dart';

class Rental extends StatelessWidget {
  const Rental({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/car': (BuildContext context) => const Car(),
        '/home': (BuildContext context) => const MyApp()
      },
      home: const Rentalpage(),
    );
  }
}

class Rentalpage extends StatefulWidget {
  const Rentalpage({Key? key}) : super(key: key);

  @override
  State<Rentalpage> createState() => _RentalpageState();
}

class _RentalpageState extends State<Rentalpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFBC044), Color(0xFFD8992B)],
          ),
        ),
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(
                        Icons.home,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(
                        Icons.close,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/car');
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'Check Vehicle Availability',
              style: TextStyle(
                  fontSize: 45.0,
                  color: Colors.white,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your zip code',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 22),
                  prefixIcon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30,
                  ),
                  border: InputBorder.none),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10.0),
            const Text(
              'We want to ensure the vehicle is available in your area for delivery',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 40.0),
            Image.asset('assets/images/porsche.png',
                fit: BoxFit.cover, height: 290.0),
            Container(
              height: 0.5,
              color: Colors.white,
            ),
            const Text(
              'Been here before ? Already have an eleanor account ?',
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Montserrat',
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 22,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Container(
              height: 1.0,
              color: Colors.white,
            ),
            const Text(
              'OR Registration Here..',
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Montserrat',
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: 'Montserrat'),
                  ),
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 22,
                  ),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
