import 'package:flutter/material.dart';
import 'home.dart';
import 'fruitspage.dart';

class Fruits extends StatelessWidget {
  const Fruits({Key? key}) : super(key: key);

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
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(
                top: 10.0, right: 15.0, bottom: 10.0, left: 15.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/picsix.jpeg'),
                        fit: BoxFit.cover),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.home),
                  color: Colors.red,
                  iconSize: 35.0,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.red,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: const <Widget>[
                Tab(
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bread',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Drink',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                FruitsPage(),
                FruitsPage(),
                FruitsPage()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: const Text(
                  'Filters',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.red,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: Colors.red,
                        style: BorderStyle.solid,
                        width: 1.0),
                  ),
                ),
              ),
              const Icon(
                Icons.search,
                color: Colors.red,
                size: 25.0,
              ),
              const Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 25.0,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.red),
                height: 45.0,
                width: 65.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Text(
                      '6',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
