import 'package:flutter/material.dart';
import 'home.dart';

class Request extends StatelessWidget {
  const Request({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const MyHomePage(title: 'Flutter'),
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const MyApp(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const FlutterLogo(size: 40.0),
          elevation: 20,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
            iconSize: 30,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
              color: Colors.white,
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  alignment: const Alignment(0.0, 0.0),
                  height: 100.0,
                  color: Colors.purple,
                  child: const Text(
                    'Welcome',
                    style: TextStyle(
                        fontFamily: 'Fredoka',
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25.0, 110.0, 25.0, 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: const [
                        BoxShadow(blurRadius: 2.0, color: Colors.white),
                      ]),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            padding:
                                const EdgeInsets.fromLTRB(25.0, 10.0, 0.5, 0.0),
                            child: const Text(
                              'YOU HAVE',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Schyler',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.fromLTRB(30.0, 30.0, 0.5, 0.5),
                            child: const Text(
                              '206',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Schyler',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 120.0),
                      Container(
                        height: 60.0,
                        width: 125.0,
                        decoration: BoxDecoration(
                            color: Colors.purple[400]?.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(13.0)),
                        child: const Center(
                          child: Text('Buy more',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Schyler',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 40.0),
            Container(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      'MY COACHES',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Schyler',
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    ),
                    Text(
                      'VIEW PAST SESSIONS',
                      style: TextStyle(
                          color: Colors.purple,
                          fontFamily: 'Schyler',
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0),
                    )
                  ],
                )),
            const SizedBox(height: 10.0),
            GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 4.0,
              shrinkWrap: true,
              children: <Widget>[
                _buildCard('Fares', 'Available', 1),
                _buildCard('Fares', 'Away', 2),
                _buildCard('Fares', 'Away', 3),
                _buildCard('Fares', 'Available', 4),
              ],
            )
          ],
        ));
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 1.0,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 12.0),
            Stack(children: <Widget>[
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.purple,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/chris.jpg'))),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: status == 'Away' ? Colors.red : Colors.green,
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0)),
              )
            ]),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Schyler',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              status,
              style: const TextStyle(
                  fontFamily: 'Schyler',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey),
            ),
            const SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey : Colors.purple,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                    child: const Center(
                      child: Text(
                        'Request',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Schyler'),
                      ),
                    )))
          ],
        ),
        margin: cardIndex.isEven
            ? const EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
            : const EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0));
  }
}
