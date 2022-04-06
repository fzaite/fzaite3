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
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 15.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xFF116D51)),
                    child: const Center(
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.0,
                    right: 30.0,
                    child: Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red),
                      child: const Center(
                          child: Text(
                        '8',
                        style: TextStyle(
                            fontFamily: 'Raleway', color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Starbucks Coffee',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
          child: SizedBox(
            height: 100.0,
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
            height: MediaQuery.of(context).size.height / 1.6,
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: 225.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
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
                    height: 250.0,
                    width: 225.0,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0)),
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.cover)),
                  ),
                  const SizedBox(height: 25.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      productName,
                      style: const TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      productType,
                      style: const TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 14.0,
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
                          style: const TextStyle(
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.grey.withOpacity(0.2)),
                            child: const Center(
                              child: Icon(Icons.add, color: Colors.grey),
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
    return Padding(
      padding: const EdgeInsets.only(
          right: 15.0, top: 10.0, bottom: 10.0, left: 4.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: switchHighlight(productName),
            boxShadow: [
              BoxShadow(
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                  color: switchShadow(productName))
            ]),
        height: 50.0,
        width: 125.0,
        child: InkWell(
          onTap: () {
            selectedProduct(productName);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: switchHighlightColor(productName)),
                ),
              ),
              const SizedBox(height: 7.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  productName,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 15.0,
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
