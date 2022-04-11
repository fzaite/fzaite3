import 'package:flutter/material.dart';
import 'fruits.dart';
import '../home_page/home.dart';

class Fruity extends StatelessWidget {
  const Fruity({Key? key}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: h * 0.009 + w * 0.009,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                  size: h * 0.03 + w * 0.02,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
              ),
              Container(
                height: h * 0.02 + w * 0.04,
                width: h * 0.2 + w * 0.2,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                      top: h * 0.01 + w * 0.02,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: h * 0.03 + w * 0.03,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  right: h * 0.01 + w * 0.014,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                    size: h * 0.01 + w * 0.05,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.01 + w * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'All Fruits',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: h * 0.01 + w * 0.027,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.01 + w * 0.01),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Avocado',
                    style: TextStyle(
                        fontSize: h * 0.011 + w * 0.02,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Grapes',
                    style: TextStyle(
                        fontSize: h * 0.011 + w * 0.02,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Apple',
                    style: TextStyle(
                        fontSize: h * 0.011 + w * 0.02,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Grapefruit',
                    style: TextStyle(
                        fontSize: h * 0.011 + w * 0.02,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.3 + w * 0.3,
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                FruitsPage(),
                FruitsPage(),
                FruitsPage(),
                FruitsPage(),
              ],
            ),
          ),
          SizedBox(height: h * 0.009 + w * 0.009),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Sales',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: h * 0.02 + w * 0.02,
              ),
            ),
          ),
          SizedBox(height: h * 0.01 + w * 0.009),
          SizedBox(
            height: h * 0.1 + w * 0.3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildFoodItem('assets/images/greenapple.png', '80', '\$13.88'),
                _buildFoodItem('assets/images/lemon.png', '75', '\$15.00'),
                _buildFoodItem('assets/images/orange.png', '89', '\$11.86')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String discount, String price) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: h * 0.1 + w * 0.09,
            width: h * 0.1 + w * 0.18,
          ),
          Positioned(
            top: 7.0,
            child: Container(
              height: h * 0.1 + w * 0.13,
              width: h * 0.1 + w * 0.16,
              decoration: BoxDecoration(
                color: const Color(0xFFAAC2A5),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10.0),
                  Image.asset(
                    imgPath,
                    fit: BoxFit.cover,
                    height: h * 0.05 + w * 0.1,
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: h * 0.015 + w * 0.015,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            child: Container(
              height: h * 0.03 + w * 0.023,
              width: h * 0.03 + w * 0.025,
              decoration: const BoxDecoration(
                color: Color(0xFFFE9741),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  bottomRight: Radius.circular(7.0),
                  bottomLeft: Radius.circular(7.0),
                ),
              ),
              child: Center(
                child: Text(
                  discount + '%',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: h * 0.01 + w * 0.015,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
