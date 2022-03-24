import 'package:flutter/material.dart';
import 'home.dart';
import 'fashion2.dart';

class Fashion extends StatelessWidget {
  const Fashion({Key? key}) : super(key: key);

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
  late TabController controller;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Discovery',
          style: TextStyle(
              fontFamily: 'montserrat',
              color: Colors.black,
              fontSize: 23.0,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera),
            color: Colors.grey,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            icon: const Icon(Icons.home),
            color: Colors.grey,
            iconSize: 35,
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          SizedBox(
            height: 150.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                listItem('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
                const SizedBox(width: 35.0),
                listItem('assets/images/model2.jpeg',
                    'assets/images/louisvuitton.jpg'),
                const SizedBox(width: 35.0),
                listItem(
                    'assets/images/model3.jpeg', 'assets/images/chloelogo.png'),
                const SizedBox(width: 35.0),
                listItem('assets/images/model1.jpeg',
                    'assets/images/chanellogo.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(15.0),
              elevation: 10.0,
              child: Container(
                height: 450.0,
                width: double.infinity,
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/model1.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(width: 10.0),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 120.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const <Widget>[
                                  Text(
                                    'Daisy',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2.0),
                                  Text(
                                    '34 mins ago',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12.0,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Icon(Icons.more_vert,
                                  color: Colors.grey, size: 20.0)
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 15.0),
                    const Text(
                      'This official website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommended to friends',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SecondPage(
                                    heroTag: 'assets/images/modelgrid1.jpeg')));
                          },
                          child: Hero(
                            tag: 'assets/images/modelgrid1.jpeg',
                            child: Container(
                              height: 200.0,
                              width:
                                  (MediaQuery.of(context).size.width - 50.0) /
                                      2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/modelgrid1.jpeg',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SecondPage(
                                        heroTag:
                                            'assets/images/modelgrid2.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid2.jpeg',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/modelgrid2.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SecondPage(
                                        heroTag:
                                            'assets/images/modelgrid3.jpeg')));
                              },
                              child: Hero(
                                tag: 'assets/images/modelgrid3.jpeg',
                                child: Container(
                                  height: 95.0,
                                  width: (MediaQuery.of(context).size.width -
                                          100.0) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/modelgrid3.jpeg'),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              '# Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Container(
                          height: 25.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: Colors.brown.withOpacity(0.2)),
                          child: const Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 10.0,
                                  color: Colors.brown),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Container(
                      height: 1.0,
                      width: double.infinity,
                      decoration:
                          BoxDecoration(color: Colors.grey.withOpacity(0.2)),
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.reply,
                            color: Colors.grey.withOpacity(0.4), size: 20.0),
                        const SizedBox(width: 5.0),
                        const Text(
                          '1.7k',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        const SizedBox(width: 15.0),
                        Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.4),
                          size: 20.0,
                        ),
                        const SizedBox(width: 5.0),
                        const Text(
                          '325',
                          style: TextStyle(
                              color: Colors.grey, fontFamily: 'Montserrat'),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 175.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const <Widget>[
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                '2.3k',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat'),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.transparent,
          tabs: const <Widget>[
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 25.0)),
            Tab(icon: Icon(Icons.play_arrow, color: Colors.grey, size: 30.0)),
            Tab(icon: Icon(Icons.navigation, color: Colors.black, size: 25.0)),
            Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 25.0)),
          ],
        ),
      ),
    );
  }

  Widget listItem(String imgPath, String logo) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: 75.0,
              width: 75.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(37.5),
                  image: DecorationImage(
                      image: AssetImage(imgPath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    image: DecorationImage(
                        image: AssetImage(logo), fit: BoxFit.contain)),
              ),
            )
          ],
        ),
        const SizedBox(height: 10.0),
        Container(
          height: 30.0,
          width: 75.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: const Color(0xFF916144)),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
