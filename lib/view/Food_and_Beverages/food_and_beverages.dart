import 'package:flutter/material.dart';
import '../home_page/home.dart';

class Foodandbeverages extends StatelessWidget {
  const Foodandbeverages({Key? key}) : super(key: key);

  // This widget is the root of your application.
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

class _MyHomePageState extends State<MyHomePage> {
  var selectedFood = 'BURGER';

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: h * 0.33 + w * 0.33,
              ),
              ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black, Colors.transparent])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: Image.asset('assets/images/tokyo.jpg',
                      height: h * 0.31 + w * 0.31, fit: BoxFit.cover)),
              RotatedBox(
                quarterTurns: 3,
                child: Text('JAPAN',
                    style: TextStyle(
                        fontSize: h * 0.058 + w * 0.058,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.3),
                        letterSpacing: 10.0)),
              ),
              Positioned(
                top: h * 0.004 + w * 0.004,
                right: h * 0.003 + w * 0.003,
                child: Container(
                  height: h * 0.027 + w * 0.027,
                  width: h * 0.027 + w * 0.027,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 1),
                      color: Colors.white),
                  child: Center(
                    child: Icon(Icons.menu, size: h * 0.02 + w * 0.02),
                  ),
                ),
              ),
              Positioned(
                top: h * 0.002 + w * 0.002,
                right: h * 0.004 + w * 0.004,
                child: Container(
                  height: h * 0.01 + w * 0.01,
                  width: h * 0.01 + w * 0.01,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w * 1),
                      color: const Color(0xFFFD3664)),
                ),
              ),
              Positioned(
                  top: h * 0.004 + w * 0.004,
                  left: h * 0.003 + w * 0.003,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Container(
                      height: h * 0.03 + w * 0.03,
                      width: h * 0.03 + w * 0.03,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w * 1),
                          color: Colors.white),
                      child: Center(
                        child: Icon(Icons.home, size: h * 0.025 + w * 0.025),
                      ),
                    ),
                  )),
              Positioned(
                  top: h * 0.16 + w * 0.16,
                  left: h * 0.033 + w * 0.033,
                  child: Column(
                    children: <Widget>[
                      Text('WELCOME TO',
                          style: TextStyle(
                              fontFamily: 'Oswald',
                              fontSize: h * 0.032 + w * 0.032,
                              fontWeight: FontWeight.w500,
                              color: Colors.white))
                    ],
                  )),
              Positioned(
                  top: h * 0.19 + w * 0.19,
                  left: h * 0.033 + w * 0.033,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('TOKYO',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: h * 0.04 + w * 0.04,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFFD3664))),
                          Text(',',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: h * 0.04 + w * 0.04,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(width: w * 0.01),
                          Text('JAPAN',
                              style: TextStyle(
                                  fontFamily: 'Oswald',
                                  fontSize: h * 0.04 + w * 0.04,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  )),
              Positioned(
                top: h * 0.26 + w * 0.26,
                left: h * 0.022 + w * 0.022,
                right: h * 0.022 + w * 0.022,
                child: Container(
                  height: h * 0.04 + w * 0.04,
                  decoration: BoxDecoration(
                    color: const Color(0xFF262626),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(
                        h * 0.013 + w * 0.013,
                      ),
                      bottomLeft: Radius.circular(
                        h * 0.013 + w * 0.013,
                      ),
                      topLeft: Radius.circular(
                        h * 0.013 + w * 0.013,
                      ),
                      topRight: Radius.circular(
                        h * 0.013 + w * 0.013,
                      ),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Lets explore some food here...',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontSize: h * 0.0118 + w * 0.0118,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: h * 0.011 + w * 0.011,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: h * 0.02 + w * 0.02,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          //Get out of the stack for the options
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            _buildMenuItem('BURGER', Icons.fastfood),
            _buildMenuItem('TEA', Icons.local_drink),
            _buildMenuItem('BEER', Icons.local_drink),
          ]),
          SizedBox(
            height: h * 0.035 + w * 0.035,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('CAKE', Icons.cake),
              _buildMenuItem('COFFEE', Icons.cloud),
              _buildMenuItem('MEAT', Icons.restaurant),
            ],
          ),
          SizedBox(
            height: h * 0.035 + w * 0.035,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildMenuItem('ICE', Icons.insert_chart),
              _buildMenuItem('FISH', Icons.filter_tilt_shift),
              _buildMenuItem('DONUTS', Icons.donut_small),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(String foodName, iconData) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        selectMenuOption(foodName);
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 100),
        height: selectedFood == foodName
            ? h * 0.09 + w * 0.09
            : h * 0.05 + w * 0.05,
        width: selectedFood == foodName
            ? h * 0.08 + w * 0.08
            : h * 0.07 + w * 0.07,
        color: selectedFood == foodName
            ? const Color(0xFFFD3566)
            : Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: selectedFood == foodName ? Colors.white : Colors.grey,
              size: h * 0.022 + w * 0.022,
            ),
            SizedBox(height: h * 0.01 + w * 0.01),
            Text(
              foodName,
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: selectedFood == foodName ? Colors.white : Colors.grey,
                fontSize: h * 0.013 + w * 0.013,
              ),
            ),
          ],
        ),
      ),
    );
  }

  selectMenuOption(String foodName) {
    setState(
      () {
        selectedFood = foodName;
      },
    );
  }
}
