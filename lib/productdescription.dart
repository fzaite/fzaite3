import 'package:flutter/material.dart';
import 'view/home_page/home.dart';
import 'furniture.dart';
import 'shopping.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp(),
        '/furniture': (BuildContext context) => const Furniture(),
        '/shopping': (BuildContext context) => const Shopping(),
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
  int photoIndex = 0;
  List<String> photos = [
    'assets/images/ottoman.jpg',
    'assets/images/otto2.jpeg',
    'assets/images/otto3.jpg',
    'assets/images/otto4.jpg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException(
            "An error occurred when converting a color");
      }
    }
    return val;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 275.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    onTap: _nextImage,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 275.0,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.transparent,
                    ),
                    onTap: _previousImage,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: const Icon(Icons.arrow_back),
                            iconSize: 30,
                            color: Colors.black,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/furniture');
                            }),
                        IconButton(
                            icon: const Icon(Icons.home),
                            iconSize: 40,
                            color: Colors.black,
                            onPressed: () {
                              Navigator.of(context).pushNamed('/home');
                            }),
                        Material(
                            elevation: 4.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                                height: 40.0,
                                width: 40.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )))
                      ],
                    ),
                  ),
                  Positioned(
                      top: 240.0,
                      left: MediaQuery.of(context).size.width / 2 - 30.0,
                      child: Row(
                        children: <Widget>[
                          SelectedPhoto(
                            numberOfDots: photos.length,
                            photoIndex: photoIndex,
                          )
                        ],
                      ))
                ],
              ),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Alcide Number: 2323X',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                      color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Finn Navian-Sofa',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 25.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: (MediaQuery.of(context).size.width / 4 +
                                MediaQuery.of(context).size.width / 2) -
                            10.0,
                        child: Text(
                          'Scandinavian small size double sofa / imported full leather /Dale Italia oil wax leather black',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            color: Colors.grey.withOpacity(0.8),
                          ),
                        ),
                      ),
                      const Text(
                        '\$ 248',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'COLOR',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(getColorHexFromStr('#5A5551'))),
                      ),
                      const SizedBox(width: 15.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(getColorHexFromStr('#C3BCB5'))),
                      ),
                      const SizedBox(width: 15.0),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Color(getColorHexFromStr('#EFEFEF'))),
                      )
                    ],
                  )),
              const SizedBox(height: 20.0),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'MATERIAL',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 22.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: const <Widget>[
                      SizedBox(
                          height: 50.0,
                          width: 50.0,
                          child: Icon(Icons.time_to_leave,
                              color: Colors.grey, size: 30.0)),
                      Text(
                        'x30%',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10.0),
                      SizedBox(
                        height: 50.0,
                        width: 50.0,
                        child: Icon(
                          Icons.timer,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      Text(
                        'x60%',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10.0),
                      SizedBox(
                        height: 50.0,
                        width: 50.0,
                        child: Icon(
                          Icons.monetization_on,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                      ),
                      Text(
                        'x10%',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
          elevation: 7.0,
          color: Colors.white,
          child: Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/shopping');
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: Colors.white,
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        color: Colors.white,
                        child: const Icon(
                          Icons.account_box,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                        color: Color(getColorHexFromStr('#FEDD59')),
                        width: MediaQuery.of(context).size.width - 130.0,
                        child: const Center(
                            child: Text(
                          'Add to Cart',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 7.0,
                                color: Colors.black,
                                offset: Offset(3.0, 3.0),
                              ),
                            ],
                          ),
                        )))
                  ]))),
    );
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  // ignore: use_key_in_widget_constructors
  const SelectedPhoto({required this.numberOfDots, required this.photoIndex});

  Widget _inactivePhoto() {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(4.0))),
    );
  }

  Widget _activePhoto() {
    return Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
          width: 10.0,
          height: 10.0,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ])),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildDots(),
    ));
  }
}
