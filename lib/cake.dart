import 'package:flutter/material.dart';
import 'home.dart';

class Cake extends StatelessWidget {
  const Cake({Key? key}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[800],
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 35,
            onPressed: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          title: const Center(
              child: Text('Cakes Catalog',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 15.0,
                        color: Colors.black,
                        offset: Offset(3.0, 3.0),
                      ),
                    ],
                  ))),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
              iconSize: 35,
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  height: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  height: 230.0,
                                  width: MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/img4.jpg'),
                                          fit: BoxFit.cover))),
                              Positioned(
                                left: 20,
                                top: 140,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Hony Bread',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 30.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 7.0,
                                            color: Colors.black,
                                            offset: Offset(3.0, 3.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      '10 JD',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 30.0,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 7.0,
                                            color: Colors.black,
                                            offset: Offset(3.0, 3.0),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(width: 5.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  Icon(Icons.favorite, color: Colors.red),
                                  Text(
                                    '300',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(Icons.chat_bubble,
                                      color: Colors.blue.withOpacity(0.8)),
                                  const Text(
                                    '76',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(7.0),
                            elevation: 2.0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: const <Widget>[
                                  Icon(Icons.arrow_forward,
                                      size: 30, color: Colors.grey),
                                  Text(
                                    '18',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.only(left: 17.0),
                  child: Text(
                    'Commodity',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const SizedBox(height: 15.0),
                GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: <Widget>[
                    _buildFoodCard('Raspberry', 'Italy',
                        'assets/images/img1.jpg', 64, 22, 1),
                    _buildFoodCard(
                        'Mousse', 'China', 'assets/images/img2.jpg', 64, 22, 2),
                    _buildFoodCard('Raspberry', 'Italy',
                        'assets/images/img3.jpg', 64, 22, 3),
                    _buildFoodCard('Cupcake', 'Sweden',
                        'assets/images/img5.jpg', 64, 22, 4),
                    _buildFoodCard('Cupcake', 'Sweden',
                        'assets/images/img6.jpg', 64, 22, 5),
                    _buildFoodCard('Cupcake', 'Sweden',
                        'assets/images/img7.jpg', 64, 22, 6),
                  ],
                ),
                const SizedBox(height: 10.0)
              ],
            )
          ],
        ));
  }

  Widget _buildFoodCard(String name, String origin, String cardImage, int likes,
      int commentCount, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven
          ? const EdgeInsets.only(right: 15.0)
          : const EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Colors.grey.withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 115.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(cardImage), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    origin,
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 13.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Colors.red.withOpacity(0.8),
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        likes.toString(),
                        style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      const SizedBox(width: 10.0),
                      Icon(
                        Icons.chat_bubble,
                        color: Colors.blue.withOpacity(0.8),
                      ),
                      const SizedBox(width: 2.0),
                      Text(
                        commentCount.toString(),
                        style: const TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 137.0,
              top: 162.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.orange),
                child: const Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
