import 'package:flutter/material.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';
import 'home5.dart';
import 'home6.dart';
import 'home7.dart';
import 'home8.dart';
import 'home9.dart';
import 'home10.dart';
import 'home11.dart';
import 'home12.dart';
import 'line.dart';
import 'footer.dart';
import '../../food.dart';
import '../../travel.dart';
import '../../profile.dart';
import '../../request.dart';
import '../../personal.dart';
import '../../login.dart';
import '../../foodrec.dart';
import '../../cake.dart';
import '../../furniture.dart';
import '../../stats.dart';
import '../../productdescription.dart';
import '../../shopping.dart';
import '../../cleandesigns.dart';
import '../../fashion.dart';
import '../../chefprofile.dart';
import '../../hairstylist.dart';
import '../../takeaway.dart';
import '../../simple.dart';
import '../../fruits.dart';
import '../../myprofile.dart';
import '../../carservice.dart';
import '../../rentalcar.dart';

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
          child: Text(
            'HOME PAGE',
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
            ),
          ),
        ),
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
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 23),
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
              ],
            ),
            const Home2(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home3(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home4(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home5(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home6(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home7(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home8(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home9(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home10(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home11(),
            const SizedBox(height: 5.0),
            const Line(),
            const Home12(),
            const SizedBox(height: 15),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
