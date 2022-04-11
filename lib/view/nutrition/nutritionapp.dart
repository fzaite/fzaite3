import 'package:flutter/material.dart';
import 'package:fzaite3/view/home_page/home.dart';
import 'detailspage.dart';

class Nutrition extends StatelessWidget {
  const Nutrition({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp()
      },
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
      backgroundColor: const Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: h * 0.01 + w * 0.01, left: h * 0.01 + w * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: h * 0.02 + w * 0.02,
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
                SizedBox(
                  width: h * 0.1 + w * 0.09,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          size: h * 0.02 + w * 0.02,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          size: h * 0.02 + w * 0.02,
                        ),
                        color: Colors.white,
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: h * 0.01 + w * 0.02),
          Padding(
            padding: EdgeInsets.only(left: h * 0.02 + w * 0.04),
            child: Row(
              children: <Widget>[
                Text(
                  'Healthy',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.02 + w * 0.021),
                ),
                SizedBox(width: h * 0.007 + w * 0.008),
                Text(
                  'Food',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: h * 0.02 + w * 0.02),
                )
              ],
            ),
          ),
          SizedBox(height: h * 0.02 + w * 0.04),
          Container(
            height: h - 189.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(h * 0.1 + w * 0.04),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(
                  left: h * 0.02 + w * 0.02, right: h * 0.02 + w * 0.02),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: h * 0.03 + w * 0.04),
                  child: SizedBox(
                    height: h * 0.6,
                    child: ListView(
                      children: [
                        _buildFoodItem('assets/images/plate1.png',
                            'Salmon bowl', '\$24.00'),
                        _buildFoodItem('assets/images/plate2.png',
                            'Spring bowl', '\$22.00'),
                        _buildFoodItem('assets/images/plate6.png',
                            'Avocado bowl', '\$26.00'),
                        _buildFoodItem(
                            'assets/images/plate5.png', 'Berry bowl', '\$24.00')
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: h * 0.04 + w * 0.04,
                      width: h * 0.04 + w * 0.04,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius:
                            BorderRadius.circular(h * 0.01 + w * 0.01),
                      ),
                      child: const Center(
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: h * 0.04 + w * 0.04,
                      width: h * 0.04 + w * 0.04,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius:
                            BorderRadius.circular(h * 0.01 + w * 0.01),
                      ),
                      child: const Center(
                        child: Icon(Icons.shopping_basket, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: h * 0.04 + w * 0.04,
                      width: h * 0.1 + w * 0.1,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius:
                            BorderRadius.circular(h * 0.01 + w * 0.01),
                        color: const Color(0xFF1C1428),
                      ),
                      child: Center(
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: h * 0.01 + w * 0.02),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String foodName, String price) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(
          left: h * 0.02 + w * 0.01,
          right: h * 0.02 + w * 0.01,
          top: h * 0.02 + w * 0.01),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                  heroTag: imgPath, foodName: foodName, foodPrice: price),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: h * 0.065 + w * 0.08,
                      width: h * 0.065 + w * 0.08),
                ),
                SizedBox(width: h * 0.02 + w * 0.02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: h * 0.012 + w * 0.02,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: h * 0.016 + w * 0.01,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                size: h * 0.018 + w * 0.018,
              ),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
