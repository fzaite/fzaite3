import 'package:fzaite3/view/home_page/home.dart';

import 'foodlist.dart';
import 'package:flutter/material.dart';

class Cakes extends StatelessWidget {
  const Cakes({Key? key}) : super(key: key);

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
    return Scaffold(
        backgroundColor: const Color(0xFFF9EFEB),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 240.0,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(75.0)),
                      color: Color(0xFFFD7465)),
                ),
                Container(
                  height: 150.0,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(65.0)),
                      color: Color(0xFFFE8A7E)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: w - 60),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                      icon: const Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.white,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35.0, left: 15.0),
                  child: Text(
                    'Good Afternoon!',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 75.0, left: 15.0),
                  child: Text(
                    'Choose your favorite!',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 160.0, left: 15.0, right: 35.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0),
                        )),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        hintText: 'Search for your favorite',
                        hintStyle:
                            TextStyle(fontFamily: 'Montserrat', fontSize: 16.0),
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                )
              ],
            ),
            TabBar(
              controller: tabController,
              indicatorColor: const Color(0xFFFE8A7E),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4.0,
              isScrollable: true,
              labelColor: const Color(0xFF440206),
              unselectedLabelColor: const Color(0xFF440206),
              tabs: const <Widget>[
                Tab(
                  child: Text(
                    'DESSERT',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'PIZZA',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'BARBECUE',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'DRINKS',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.0,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 220,
              child: TabBarView(
                controller: tabController,
                children: const <Widget>[
                  FoodList(),
                  FoodList(),
                  FoodList(),
                  FoodList(),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'RECOMMEND',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15.0,
                ),
              ),
            ),
            _listItem(
                'assets/images/steak.png',
                'Chocolate lemon cup cake',
                'The sour and sweetness of the lemon neutralizes the sweetness of the cream',
                '\$18.0',
                134,
                2412,
                '2-3per'),
            const SizedBox(height: 10.0),
            _listItem(
                'assets/images/steak.png',
                'Strawberry cupcake',
                'Rich in taste, dense in taste, with a bit of bitterness in chocolate, it is a great...',
                '\$18.0',
                134,
                2412,
                '2-3per'),
            const SizedBox(height: 20.0)
          ],
        ));
  }

  _listItem(String imgPath, String foodName, String desc, String price,
      int likes, int calCount, String serving) {
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, top: 15.0, right: 10),
      child: Stack(
        children: <Widget>[
          SizedBox(
            height: 170.0,
            width: w,
          ),
          Positioned(
            left: 15.0,
            top: 43.0,
            child: Container(
              height: 170.0,
              width: w - 15.0,
              decoration: BoxDecoration(
                color: const Color(0xFFF9EFEB),
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          Positioned(
              left: 0.0,
              top: 0.0,
              child: Container(
                height: 165.0,
                width: w,
                decoration: BoxDecoration(
                    color: const Color(0xFFF9EFEB),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3.0,
                          blurRadius: 3.0)
                    ]),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                    child: Row(
                      children: <Widget>[
                        const Icon(Icons.favorite,
                            color: Color(0xFFF75A4C), size: 15.0),
                        const SizedBox(width: 5.0),
                        Text(
                          likes.toString(),
                          style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey),
                        ),
                        const SizedBox(width: 25.0),
                        const Icon(Icons.account_box,
                            color: Color(0xFFF75A4C), size: 15.0),
                        const SizedBox(width: 5.0),
                        Text(
                          calCount.toString() + 'cal',
                          style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey),
                        ),
                        const SizedBox(width: 25.0),
                        const Icon(Icons.play_circle_outline,
                            color: Color(0xFFF75A4C), size: 15.0),
                        const SizedBox(width: 5.0),
                        Text(
                          serving,
                          style: const TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
              )),
          Container(
            height: 125.0,
            width: w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.asset(imgPath, fit: BoxFit.cover),
                  const SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 10.0),
                      Text(
                        foodName,
                        style: const TextStyle(
                            color: Color(0xFF563734),
                            fontFamily: 'Montserrat',
                            fontSize: 15.0),
                      ),
                      const SizedBox(height: 5.0),
                      SizedBox(
                        width: 175.0,
                        child: Text(
                          desc,
                          style: const TextStyle(
                              color: Color(0xFFB2A9A9),
                              fontFamily: 'Montserrat',
                              fontSize: 11.0),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        price.toString(),
                        style: const TextStyle(
                            color: Color(0xFFF76053),
                            fontFamily: 'Montserrat',
                            fontSize: 15.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
