import 'package:flutter/material.dart';
import 'main.dart';
import 'profille.dart';

class Travel extends StatelessWidget {
  const Travel({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MyHomePage(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const MyApp(),
        });
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

  var tripDetails;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.home),
          color: Colors.white,
          iconSize: 35,
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
        ),
        title: const Center(
            child: Text('Traveling',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () {}))
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.home, color: Colors.black)),
            Tab(icon: Icon(Icons.search, color: Colors.grey)),
            Tab(icon: Icon(Icons.graphic_eq, color: Colors.grey)),
            Tab(icon: Icon(Icons.add_circle_outline, color: Colors.grey)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'travelogram',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                      color: Colors.grey.shade900),
                ),
                const SizedBox(width: 90.0),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  color: Colors.grey.shade500,
                  iconSize: 30.0,
                  onPressed: () {},
                ),
                const SizedBox(width: 5.0),
                InkWell(
                  child: Hero(
                    tag: 'assets/images/chris.jpg',
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/chris.jpg'))),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()));
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 15.0),
            child: Container(
              padding: const EdgeInsets.only(left: 10.0),
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey.shade100),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.navigation, color: Colors.blue),
                    iconSize: 50.0,
                    onPressed: () {},
                  ),
                  const SizedBox(width: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(top: 27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MALDIVES TRIP 2018',
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 14.0),
                        ),
                        const SizedBox(height: 4.0),
                        const Text(
                          'Add an update',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(width: 50.0),
                  IconButton(
                    icon:
                        const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                    iconSize: 30.0,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'FROM THE COMMUNITY',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15.0,
                      fontFamily: 'Montserrat'),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
          ),
          _buildImageGrid(),
          _imgGalleryDetail(),
        ],
      ),
    );
  }

  Widget _imgGalleryDetail() {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Maui Summer 2018',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    fontSize: 15.0),
              ),
              const SizedBox(height: 7.0),
              Row(
                children: <Widget>[
                  Text(
                    'Teresa Soto added 52 Photos',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'Montserrat',
                        fontSize: 11.0),
                  ),
                  const SizedBox(width: 4.0),
                  const Icon(
                    Icons.timer,
                    size: 4.0,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 4.0),
                  Text(
                    '2h ago',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontFamily: 'Montserrat',
                        fontSize: 11.0),
                  )
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 20.0,
                  width: 20.0,
                  child: Image.asset('assets/images/navarrow.png'),
                ),
              ),
              const SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 20.0,
                  width: 20.0,
                  child: Image.asset('assets/images/chatbubble.png'),
                ),
              ),
              const SizedBox(width: 7.0),
              InkWell(
                onTap: () {},
                child: SizedBox(
                  height: 22.0,
                  width: 22.0,
                  child: Image.asset('assets/images/fav.png'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildImageGrid() {
    return Padding(
        padding: const EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
        child: SizedBox(
          height: 225.0,
          child: Row(
            children: <Widget>[
              Container(
                  height: 225.0,
                  width: MediaQuery.of(context).size.width / 2 + 40.0,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0)),
                      image: DecorationImage(
                          image: AssetImage('assets/images/beach1.jpg'),
                          fit: BoxFit.cover))),
              const SizedBox(width: 2.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 111.5,
                      width: MediaQuery.of(context).size.width / 2 - 72.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/beach2.jpg'),
                            fit: BoxFit.cover),
                      )),
                  const SizedBox(height: 2.0),
                  Container(
                      height: 111.5,
                      width: MediaQuery.of(context).size.width / 2 - 72.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/beach3.jpg'),
                            fit: BoxFit.cover),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
