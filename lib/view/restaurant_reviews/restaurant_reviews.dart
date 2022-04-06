import 'package:flutter/material.dart';
import 'myrestaurants.dart';
import '../home_page/home.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({Key? key}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              color: Colors.grey,
              fontSize: w / 23,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/home');
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
            size: 30,
          ),
        ),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
          )
        ],
        elevation: 4.0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: w / 8 + h / 11,
                    width: w / 8 + h / 11,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(w / 2),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/chris.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                left: w / 2 - 7,
                top: h / 16 + w / 8 + 5,
                child: Container(
                  height: 27.0,
                  width: 27.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: Colors.white),
                  child: const Icon(
                    Icons.fastfood,
                    color: Colors.red,
                    size: 14.0,
                  ),
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              Text(
                'Chloe Hannouille',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: w / 21,
                    color: const Color(0xFF1D3062)),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: w / 27,
                  ),
                  Text(
                    'Dhaka-Bangladesh',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: w / 27,
                        color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            height: h / 9 + w / 7,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.05),
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '121k',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: w / 52 + h / 57,
                          color: Colors.red),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: w / 30,
                          color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '152',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: w / 52 + h / 57,
                          color: Colors.red),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: w / 30,
                          color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '455',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: w / 52 + h / 57,
                          color: Colors.red),
                    ),
                    Text(
                      'Taste Maker',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: w / 30,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          Center(
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFF33426F),
              isScrollable: true,
              unselectedLabelColor: const Color(0xFFB6BDC7),
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'My Restaurants',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: w / 42 + h / 50,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'My Wishlist',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: w / 42 + h / 57,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60.0),
          SizedBox(
              height: MediaQuery.of(context).size.height - 400.0,
              child: TabBarView(
                controller: tabController,
                children: const <Widget>[
                  MyRestaurants(),
                  MyRestaurants(),
                ],
              ))
        ],
      ),
    );
  }
}
