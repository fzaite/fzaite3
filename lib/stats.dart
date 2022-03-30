import 'package:flutter/material.dart';
import 'view/home_page/home.dart';
import 'furniture.dart';
import 'shopping.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp(),
        '/furniture': (BuildContext context) => const Furniture(),
        '/shopping': (BuildContext context) => const Shopping(),
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

  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw const FormatException(
            "An error occurred when converting a color");
      }
    }
    return val;
  }

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
      body: ListView(children: <Widget>[
        Column(children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 250.0,
              width: double.infinity,
              color: Color(getColorHexFromStr('#FDD148')),
            ),
            Positioned(
              bottom: 250.0,
              right: 100.0,
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200.0),
                    color:
                        Color(getColorHexFromStr('#FEE16D')).withOpacity(0.4)),
              ),
            ),
            Positioned(
              bottom: 300.0,
              left: 150.0,
              child: Container(
                  height: 300.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Color(getColorHexFromStr('#FEE16D'))
                          .withOpacity(0.5))),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 15.0),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(37.5),
                          border: Border.all(
                              color: Colors.white,
                              style: BorderStyle.solid,
                              width: 3.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/chris.jpg'))),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Pino',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '176****590',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16.0,
                              color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width - 280.0),
                    Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: const Icon(Icons.settings),
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 35.0,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        icon: const Icon(Icons.home),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        color: Colors.white,
                        iconSize: 35.0,
                      ),
                    ),
                    const SizedBox(height: 15.0)
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.folder_shared),
                          color: Colors.white,
                          iconSize: 40.0,
                          onPressed: () {},
                        ),
                        const Text(
                          'Favorites',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.account_balance_wallet),
                          color: Colors.white,
                          iconSize: 40.0,
                          onPressed: () {},
                        ),
                        const Text(
                          'Wallet',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.print),
                          color: Colors.white,
                          iconSize: 40.0,
                          onPressed: () {},
                        ),
                        const Text(
                          'Footprint',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.computer),
                          color: Colors.white,
                          iconSize: 40.0,
                          onPressed: () {},
                        ),
                        const Text(
                          'Coupon',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 25.0),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        cardDetails(
                            'Pending payment', 'assets/images/card.png', '5'),
                        cardDetails(
                            'To be shipped', 'assets/images/box.png', '2'),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        cardDetails(
                            'To be received', 'assets/images/trucks.png', '8'),
                        cardDetails('Return / Replace',
                            'assets/images/returnbox.png', '0'),
                      ],
                    ),
                    const SizedBox(height: 5.0)
                  ],
                )
              ],
            )
          ]),
          const SizedBox(height: 15.0),
          listItem('Gift card', Colors.red, Icons.account_box),
          listItem('Bank card', Color(getColorHexFromStr('#E89300')),
              Icons.credit_card),
          listItem('Replacement code', Color(getColorHexFromStr('#FB8662')),
              Icons.grid_on),
          listItem('Consulting collection', Colors.blue, Icons.pages),
          listItem('Customer service', Color(getColorHexFromStr('#ECB800')),
              Icons.person)
        ])
      ]),
      bottomNavigationBar: Material(
        color: Colors.yellow[700],
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            const Tab(icon: Icon(Icons.person_outline, color: Colors.white)),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/furniture');
              },
              child:
                  const Tab(icon: Icon(Icons.event_seat, color: Colors.grey)),
            ),
            const Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/shopping');
              },
              child: const Tab(
                  icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem(String title, Color buttonColor, iconButton) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: buttonColor.withOpacity(0.3)),
            child: Icon(iconButton, color: buttonColor, size: 25.0),
          ),
          const SizedBox(width: 25.0),
          SizedBox(
            width: MediaQuery.of(context).size.width - 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.arrow_forward_ios,
                    color: Colors.black, size: 20.0)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardDetails(String title, String imgPath, String valueCount) {
    return Material(
      elevation: 4.0,
      borderRadius: BorderRadius.circular(7.0),
      child: Container(
        height: 125.0,
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0), color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
                height: 50.0,
                width: 50.0,
              ),
            ),
            const SizedBox(height: 2.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(title,
                  style: const TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 15.0,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(height: 3.0),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(valueCount,
                  style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
