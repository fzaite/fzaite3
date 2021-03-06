import 'package:flutter/material.dart';
import 'plantslist.dart';
import '../home_page/home.dart';

class Plants extends StatelessWidget {
  const Plants({Key? key}) : super(key: key);

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
    // ignore: todo
    // TODO: implement initState
    tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        const SizedBox(height: 15.0),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // ignore: avoid_unnecessary_containers
              Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.home),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/home');
                      },
                    ),
                  ],
                ),
              ),
              FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.grey.withOpacity(0.3),
                  mini: true,
                  elevation: 0.0,
                  child: const Icon(Icons.shopping_cart,
                      color: Colors.black, size: 17.0)),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            'Top Picks',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 40.0,
                fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey.withOpacity(0.5),
            isScrollable: true,
            tabs: const <Widget>[
              Tab(
                child: Text(
                  'Top',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Outdoor',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Indoor',
                  style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  'Plants',
                  style: TextStyle(
                      fontSize: 17.0,
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
              PlantList(),
              PlantList(),
              PlantList(),
              PlantList()
            ],
          ),
        )
      ],
    ));
  }
}
