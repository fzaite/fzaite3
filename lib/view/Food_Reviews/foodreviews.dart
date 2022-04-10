import 'package:flutter/material.dart';
import 'package:fzaite3/view/home_page/home.dart';
import 'foodlist.dart';

class Foodreviews extends StatelessWidget {
  const Foodreviews({Key? key}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: h * 0.33 + w * 0.17,
            ),
            Container(
              height: h * 0.22 + w * 0.122,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/counter.jpg'),
                      fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.home),
                color: Colors.black.withOpacity(0.7),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                iconSize: h * 0.02 + w * 0.025,
              ),
            ),
            Positioned(
              top: h * 0.13 + w * 0.1,
              left: w * .05,
              child: Container(
                height: h * 0.11 + w * 0.1,
                width: h * 0.11 + w * 0.1,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(w * 1),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/model.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              top: h * 0.20 + w * 0.14,
              left: w * .44,
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Elisabeth',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: h * 0.013 + w * 0.025,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '1,974 Followers',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: h * 0.012 + w * 0.02,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(width: w * 0.0),
                  Container(
                    height: h * 0.11 + w * 0.05,
                    width: h * 0.12 + w * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Text('Follow',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: h * 0.014 + w * 0.015,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF5A9776))),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: h * 0.02 + w * 0.02,
          ),
          child: TabBar(
            controller: tabController,
            indicatorColor: const Color(0xFF469469),
            labelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.grey.withOpacity(0.6),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Recipes',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: h * 0.017 + w * 0.02,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Gallery',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: h * 0.017 + w * 0.02,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Story',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: h * 0.017 + w * 0.02,
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: h - 280,
          child: TabBarView(
            controller: tabController,
            children: const <Widget>[
              FoodList(),
              FoodList(),
              FoodList(),
            ],
          ),
        )
      ],
    ));
  }
}
