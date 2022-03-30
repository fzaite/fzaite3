import 'package:flutter/material.dart';
import '../home_page/home.dart';

class Cleandesigns extends StatelessWidget {
  const Cleandesigns({Key? key}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: const Text(
            'EXPLORE',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.home),
            color: Colors.black,
            iconSize: 28.0,
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              color: Colors.black,
              iconSize: 28.0,
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
            children: <Widget>[
              SizedBox(
                  height: 125.0,
                  width: double.infinity,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(10.0),
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                                height: 70.0,
                                width: 70.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35.0),
                                    color: Colors.orange),
                                child: IconButton(
                                  icon: const Icon(Icons.add),
                                  color: Colors.white,
                                  onPressed: () {},
                                )),
                            const SizedBox(height: 7.0),
                            const Text('Add To',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                        const SizedBox(width: 25.0),
                        listItem('assets/images/tomcruise.jpg', 'tom', true),
                        const SizedBox(width: 25.0),
                        listItem('assets/images/chris.jpg', 'chris', false),
                        const SizedBox(width: 25.0),
                        listItem(
                            'assets/images/johnnydepp.jpg', 'johnny', true),
                        const SizedBox(width: 25.0),
                        listItem('assets/images/hugh.jpg', 'hugh', false),
                      ])),
              const SizedBox(
                height: 15.0,
              ),
              const SizedBox(height: 15.0),
              firstStyleRow('assets/images/cone.jpeg',
                  'assets/images/letter.jpeg', 'assets/images/chris.jpg'),
              const SizedBox(height: 10.0),
              secondStyleRow('assets/images/window.jpeg',
                  'assets/images/cactus.jpeg', 'assets/images/tomcruise.jpg'),
              const SizedBox(height: 10.0),
              infoRow(),
              const SizedBox(height: 15.0),
              firstStyleRow('assets/images/cone.jpeg',
                  'assets/images/letter.jpeg', 'assets/images/chris.jpg'),
              const SizedBox(height: 10.0),
              secondStyleRow('assets/images/window.jpeg',
                  'assets/images/cactus.jpeg', 'assets/images/tomcruise.jpg'),
              const SizedBox(height: 10.0),
              infoRow(),
              const SizedBox(height: 15.0),
              firstStyleRow('assets/images/cone.jpeg',
                  'assets/images/letter.jpeg', 'assets/images/chris.jpg'),
              const SizedBox(height: 10.0),
              secondStyleRow('assets/images/window.jpeg',
                  'assets/images/cactus.jpeg', 'assets/images/tomcruise.jpg'),
              const SizedBox(height: 10.0),
              infoRow(),
            ]));
  }

  Widget infoRow() {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  const Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/chris.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'chris',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.orange),
                            ),
                            Text(
                              '10:51PM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])),
            const SizedBox(width: 10.0),
            SizedBox(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  const Text(
                    'I like the way to place items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/johnnydepp.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              'johnny',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.orange),
                            ),
                            Text(
                              '10:51PM',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Montserrat', color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])),
          ],
        ));
  }

  Widget secondStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath2), fit: BoxFit.cover)),
            ),
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: <Widget>[
                const Text(
                  'I like the way to place items to show more...',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Montserrat'),
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage(avatarImg), fit: BoxFit.cover)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Tom',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.orange),
                        ),
                        Text(
                          '10:51PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Montserrat', color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 42.0),
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath1), fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget firstStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
        height: 250.0,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(children: [
          SizedBox(
              height: 250.0,
              width: (MediaQuery.of(context).size.width - 30.0) / 2,
              child: Column(children: [
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath1), fit: BoxFit.cover)),
                ),
                const SizedBox(height: 15.0),
                const Text('I like the way to place Items to show more...',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Montserrat')),
                const SizedBox(height: 15.0),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(
                                  image: AssetImage(avatarImg)))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'chris',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat', color: Colors.orange),
                          ),
                          Text(
                            '10:51PM',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Montserrat', color: Colors.grey),
                          ),
                        ],
                      )
                    ])
              ])),
          const SizedBox(width: 10.0),
          SizedBox(
              height: 250.0,
              width: (MediaQuery.of(context).size.width - 30.0) / 2,
              child: Container(
                  height: 250.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath2), fit: BoxFit.cover))))
        ]));
  }

  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
          height: 70.0,
          width: 70.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover)),
        ),
        const SizedBox(height: 7.0),
        Row(
          children: <Widget>[
            Text(name,
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600)),
            const SizedBox(width: 4.0),
            available
                ? Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orange),
                  )
                : Container()
          ],
        )
      ],
    );
  }
}
