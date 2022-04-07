import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../home_page/home.dart';

class Rentalservice extends StatelessWidget {
  const Rentalservice({Key? key}) : super(key: key);

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
    List allImgs = ['assets/images/pic1.jpg', 'assets/images/pic2.jpg'];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rent house',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: w * 0.019 + h * 0.019,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: w * 0.017 + h * 0.017,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: h * 0.01,
                color: Colors.transparent,
              ),
              CarouselSlider(
                items: allImgs.map(
                  (i) {
                    return Stack(
                      children: <Widget>[
                        Container(height: h * .35, color: Colors.white),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: h * 0.35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                image: DecorationImage(
                                    image: AssetImage(i), fit: BoxFit.cover)),
                          ),
                        ),
                        Positioned(
                          left: w * 0.07,
                          top: h * 0.15,
                          child: Container(
                            height: w * 0.09 + h * 0.09,
                            width: w * 0.22 + h * 0.22,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                                boxShadow: [
                                  BoxShadow(
                                      spreadRadius: 1.0,
                                      color: Colors.grey.withOpacity(0.4),
                                      blurRadius: 1.0)
                                ],
                                borderRadius: BorderRadius.circular(7.0)),
                            child: Container(
                              width: w * 0.22 + h * 0.22,
                              padding: EdgeInsets.only(
                                  left: w * .02, right: w * .02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: h * 0.01),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Kra water village',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize:
                                                    w * 0.014 + h * 0.014),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: h * 0.03),
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                '18',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize:
                                                        w * 0.014 + h * 0.014,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: h * 0.02),
                                              Text(
                                                'Sell',
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize:
                                                      w * 0.010 + h * 0.010,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(width: w * 0.05),
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                '74',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize:
                                                        w * 0.014 + h * 0.014,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: h * 0.02),
                                              Text(
                                                'Rent',
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize:
                                                      w * 0.010 + h * 0.010,
                                                ),
                                              )
                                            ],
                                          ),
                                          SizedBox(width: w * 0.05),
                                          Column(
                                            children: <Widget>[
                                              Text(
                                                '36',
                                                style: TextStyle(
                                                    fontFamily: 'Montserrat',
                                                    fontSize:
                                                        w * 0.014 + h * 0.014,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: h * 0.02),
                                              Text(
                                                'Sublet',
                                                style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontSize:
                                                      w * 0.010 + h * 0.010,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      SizedBox(height: h * 0.015),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: w * 0.014 + h * 0.014,
                                          ),
                                          Text(
                                            '4.9',
                                            style: TextStyle(
                                                fontFamily: 'Montserrat',
                                                fontSize: w * 0.012 + h * 0.012,
                                                color: Colors.amber,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: h * 0.05),
                                      Container(
                                        height: w * 0.014 + h * 0.014,
                                        width: w * 0.014 + h * 0.014,
                                        decoration: BoxDecoration(
                                            color: const Color(0xFF2560FA),
                                            borderRadius: BorderRadius.circular(
                                                w * 0.004 + h * 0.004)),
                                        child: Center(
                                          child: Icon(
                                            Icons.send,
                                            color: Colors.white,
                                            size: w * 0.010 + h * 0.010,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ).toList(),
                options: CarouselOptions(initialPage: 0),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.0, left: w * 0.02, right: w * 0.02),
            child: SizedBox(
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Rent',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: w * 0.015 + h * 0.015,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: w * 0.014 + h * 0.014,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.03),
          SizedBox(
            height: h - w * 0.25,
            child: ListView(
              children: <Widget>[
                _buildCard('Gounuli', 'assets/images/chris.jpg', '3.7',
                    'The newly decorated new house is well furnished and has a beautiful environment'),
                _buildCard('Michelle', 'assets/images/hugh.jpg', '4.3',
                    'Country garden a villa want to add me')
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildCard(String name, String imgPath, String price, String desc) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: w * 0.214 + h * 0.214,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(w * 0.05),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 2.0,
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2.0)
          ],
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: h * 0.03),
            Container(
              padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
              width: w - 25.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: h * 0.07,
                        width: w * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w * 0.5),
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(name,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: w * 0.011 + h * 0.011,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: h * 0.01),
                          Text('6 minutes ago',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: w * 0.011 + h * 0.011,
                                  color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                  Text(
                    '\$' + price + ' million',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: w * 0.014 + h * 0.014,
                      color: const Color(0xFFFE6643),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0),
              child: Text(
                desc,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: w * 0.011 + h * 0.011,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 8.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: w * 0.094 + h * 0.094,
                    width: w / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/pic1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Column(
                    children: <Widget>[
                      Container(
                        height: h * 0.06,
                        width: (w - 90.0) / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pic1.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Container(
                        height: h * 0.06,
                        width: (w - 90.0) / 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/pic1.jpg'),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
