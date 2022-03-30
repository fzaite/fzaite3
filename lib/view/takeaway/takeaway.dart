import 'package:flutter/material.dart';
import '../home_page/home.dart';
import 'guess_you_like.dart';

class Takeaway extends StatelessWidget {
  const Takeaway({Key? key}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 2.0),
                ], color: Colors.white),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.settings),
                  color: Colors.black.withOpacity(0.7),
                  onPressed: () {},
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.home),
                  color: Colors.black.withOpacity(0.7),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                  iconSize: 30,
                ),
              ),
              Positioned(
                top: 50.0,
                left: 15.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 125.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          image: const DecorationImage(
                              image:
                                  AssetImage('assets/images/orangemodel.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 15.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Joccb Coleman',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFE6E22)),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: <Widget>[
                            const Icon(Icons.location_on,
                                color: Color(0xFFC6CC40)),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 175.0,
                              child: const Text(
                                'Building 5104, 18 Street',
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 175.0,
                          child: const Text(
                            '13 Hudson Estuary, Freedom Island, New York Harbour',
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: TabBar(
                  controller: tabController,
                  indicatorColor: const Color(0xFFFE6E22),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4.0,
                  labelColor: const Color(0xFFFE6E22),
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  tabs: const <Widget>[
                    Tab(
                      child: Text(
                        'Guess you like',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'News',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Coupon',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 275.0,
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                GuessYouLikePage(),
                GuessYouLikePage(),
                GuessYouLikePage()
              ],
            ),
          )
        ],
      ),
    );
  }
}
