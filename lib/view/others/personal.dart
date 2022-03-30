import 'package:flutter/material.dart';
import '../home_page/home.dart';

class Profilee extends StatelessWidget {
  const Profilee({Key? key}) : super(key: key);

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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          elevation: 10.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 35,
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          title: const Center(
              child: Text('My Profile',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 7.0,
                        color: Colors.black,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],
                  ))),
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
        body: Stack(
          children: <Widget>[
            ClipPath(
              child: Container(color: Colors.green.withOpacity(0.8)),
              clipper: getClipper(),
            ),
            Positioned(
                width: w,
                top: h / 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.CCxNT1SP4UUWL_rqQY178gHaF7?pid=ImgDet&rs=1'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.all(Radius.circular(75.0)),
                            boxShadow: [
                              BoxShadow(blurRadius: 7.0, color: Colors.black)
                            ])),
                    const SizedBox(height: 60.0),
                    const Text(
                      'Fares Alzaite',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Fredoka',
                        shadows: [
                          Shadow(
                            blurRadius: 7.0,
                            color: Colors.black,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'Mobile Developer',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.green,
                          fontFamily: 'Fredoka'),
                    ),
                  ],
                ))
          ],
        ));
  }
}

// ignore: camel_case_types
class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // ignore: todo
    // TODO: implement shouldReclip
    return true;
  }
}
