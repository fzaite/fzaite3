import 'package:flutter/material.dart';
import 'detailpage.dart';
import '../home_page/home.dart';

class Greenrevolution extends StatelessWidget {
  const Greenrevolution({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: h * 0.005 + w * 0.005),
          Padding(
            padding: EdgeInsets.only(
              left: h * 0.01 + w * 0.01,
              right: h * 0.01 + w * 0.01,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                  color: Colors.black,
                ),
                Container(
                  height: h * 0.033 + w * 0.033,
                  width: h * 0.033 + w * 0.033,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 0.3),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/avocado.png'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          SizedBox(height: h * 0.008 + w * 0.008),
          Padding(
            padding: EdgeInsets.only(
              left: h * 0.033 + w * 0.033,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Good',
                    style: TextStyle(
                      fontFamily: 'Futur',
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF5B8842),
                      fontSize: h * 0.036 + w * 0.036,
                    )),
                Text('Morning',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF5B8842),
                      fontSize: h * 0.036 + w * 0.036,
                    )),
                SizedBox(
                  height: h * 0.033 + w * 0.033,
                ),
                Text('Popular Food',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: h * 0.023 + w * 0.023,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: h * 0.009 + w * 0.009,
          ),
          SizedBox(
            height: h * 0.2 + w * 0.2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem(
                    'assets/images/plate1.png', 'Vegan Breakfast', '\$28'),
                _buildListItem(
                    'assets/images/plate2.png', 'Protein Salad', '\$26')
              ],
            ),
          ),
          SizedBox(
            height: h * 0.01 + w * 0.01,
          ),
          Padding(
              padding: EdgeInsets.only(
                left: h * 0.023 + w * 0.023,
              ),
              child: Text('Best Food',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontSize: h * 0.017 + w * 0.017,
                  ))),
          SizedBox(height: h * 0.005 + w * 0.005),
          Padding(
            padding: EdgeInsets.only(
                left: h * 0.015 + w * 0.015, right: h * 0.015 + w * 0.015),
            child: Container(
              height: h * 0.18 + w * 0.18,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Colors.white, Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(w * 0.06),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/plate1.png'),
                      fit: BoxFit.contain)),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: h * 0.04 + w * 0.04,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(w * 0.09),
                topRight: Radius.circular(w * 0.09)),
            color: const Color(0xFF5AC035)),
        padding: EdgeInsets.only(
            left: h * 0.05 + w * 0.05, right: h * 0.05 + w * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.bookmark_border,
              color: Colors.white,
              size: h * 0.02 + w * 0.02,
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: h * 0.02 + w * 0.02,
            ),
            Icon(
              Icons.shopping_basket,
              color: Colors.white,
              size: h * 0.02 + w * 0.02,
            ),
            Icon(
              Icons.person_outline,
              color: Colors.white,
              size: h * 0.02 + w * 0.02,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String imgPath, String foodName, String price) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
              builder: (context) => DetailsPage(
                  heroTag: imgPath, foodName: foodName, foodPrice: price))));
        },
        child: Padding(
            padding: EdgeInsets.only(
              left: h * 0.013 + w * 0.013,
              top: h * 0.001 + w * 0.001,
              bottom: h * 0.01 + w * 0.01,
            ),
            child: Container(
                height: h * 0.15 + w * 0.15,
                width: h * 0.15 + w * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(w * 0.1),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: h * 0.13 + w * 0.13,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [Colors.white, Color(0xFFACBEA3)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(w * 0.05),
                                topRight: Radius.circular(w * 0.05)))),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: h * 0.14 + w * 0.14,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(w * 0.05),
                                  topRight: Radius.circular(w * 0.05))),
                        )),
                    Positioned(
                        top: h * 0.13 + w * 0.13,
                        right: h * 0.012 + w * 0.012,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(w * 0.05),
                            child: Container(
                              height: h * 0.013 + w * 0.013,
                              width: h * 0.013 + w * 0.013,
                              child: const Center(
                                  child: Icon(Icons.favorite,
                                      color: Colors.red, size: 17.0)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white),
                            ))),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            const SizedBox(height: 3.0),
                            SizedBox(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: const <Widget>[
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                      ],
                                    ),
                                    Text(price,
                                        style: const TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16.0)),
                                  ],
                                ))
                          ],
                        ))
                  ],
                ))));
  }
}
