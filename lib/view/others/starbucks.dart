import 'package:flutter/material.dart';
import '../home_page/home.dart';

class Starbucks extends StatelessWidget {
  const Starbucks({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
  var selectedItem = 'All products';

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: w * 0.06,
                  ),
                  color: Colors.black,
                  iconSize: w * 0.06,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 15.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                  ),
                  Container(
                    height: w * .035 + h * .035,
                    width: w * .035 + h * .035,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w * 0.8),
                        color: const Color(0xFF116D51)),
                    child: Center(
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.white,
                        size: w * 0.050,
                      ),
                    ),
                  ),
                  Positioned(
                    top: h * 0.006,
                    right: w * 0.015,
                    child: Container(
                      height: h * 0.03,
                      width: w * 0.03,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w * 0.8),
                          color: Colors.red),
                      child: Center(
                          child: Text(
                        '8',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: w * .03),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Starbucks Coffee',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: w * .025 + h * .025,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
          child: SizedBox(
            height: w * .205 + h * .090,
            width: w * .205 + h * .090,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildItem('All products', 59),
                _buildItem('Espresso', 17),
                _buildItem('Iced Tea', 20),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0),
          child: SizedBox(
            height: h * 0.8,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildCoffeeItem('assets/images/coffee.jpg',
                    'Latte with Turmeric', 'Iced Coffee', '2.99'),
                _buildCoffeeItem('assets/images/coffee2.jpg',
                    'Latte with Turmeric', 'Iced Coffee', '2.99'),
                _buildCoffeeItem('assets/images/coffee3.jpg',
                    'Latte with Turmeric', 'Iced Coffee', '2.99')
              ],
            ),
          ),
        ),
      ],
    ));
  }

  _buildCoffeeItem(
      String imgPath, String productName, String productType, String price) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: 260,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(w * 0.031),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 4.0,
                    blurRadius: 4.0)
              ]),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: h * .3,
                    width: w * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(w * 0.03),
                            topRight: Radius.circular(w * 0.03)),
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.cover)),
                  ),
                  SizedBox(height: h * 0.07),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      productName,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: w * .018 + h * .018),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      productType,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: w * .016 + h * .016,
                          color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Container(
                        height: 0.4,
                        color: Colors.grey.withOpacity(0.4),
                      )),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '\$' + price,
                          style: TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: w * .015 + h * .015),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: w * .05,
                            width: w * .05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.withOpacity(0.2)),
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.grey,
                                size: w * .023 + h * .023,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }

  _buildItem(String productName, int count) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(
          right: 15.0, top: 10.0, bottom: 10.0, left: 4.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(w * 0.03),
            color: switchHighlight(productName),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                  color: switchShadow(productName))
            ]),
        height: h * .07,
        width: w * .3,
        child: InkWell(
          onTap: () {
            selectedProduct(productName);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: h * .03),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: w * .020 + h * .020,
                      fontWeight: FontWeight.bold,
                      color: switchHighlightColor(productName)),
                ),
              ),
              SizedBox(height: h * .03),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  productName,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: w * .016 + h * .016,
                      color: switchHighlightColor(productName)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  selectedProduct(prodName) {
    setState(() {
      selectedItem = prodName;
    });
  }

  switchHighlight(prodName) {
    if (prodName == selectedItem) {
      return const Color(0xFF116D51);
    } else {
      return Colors.grey.withOpacity(0.3);
    }
  }

  switchHighlightColor(prodName) {
    if (prodName == selectedItem) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  switchShadow(prodName) {
    if (prodName == selectedItem) {
      return const Color(0xFF116D51).withOpacity(0.4);
    } else {
      return Colors.transparent;
    }
  }
}
