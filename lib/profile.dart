import 'package:flutter/material.dart';
import 'food.dart';

void main() => runApp(const Profile());

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/food': (BuildContext context) => const Food()
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
  late Animation cardAnimation,
      delayedCardAnimation,
      fabButtonanim,
      infoAnimation;
  late AnimationController controller;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);

    cardAnimation = Tween(begin: 0.0, end: -0.025).animate(
        CurvedAnimation(curve: Curves.fastOutSlowIn, parent: controller));

    delayedCardAnimation = Tween(begin: 0.0, end: -0.05).animate(
        CurvedAnimation(
            curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
            parent: controller));

    fabButtonanim = Tween(begin: 1.0, end: -0.0008).animate(CurvedAnimation(
        curve: const Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller));

    infoAnimation = Tween(begin: 0.0, end: 0.025).animate(CurvedAnimation(
        curve: const Interval(0.7, 1.0, curve: Curves.fastOutSlowIn),
        parent: controller));
  }

  @override
  Widget build(BuildContext context) {
    final devHeight = MediaQuery.of(context).size.height;
    controller.forward();
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red[700],
              elevation: 0.0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.white,
                iconSize: 35,
                onPressed: () {
                  Navigator.of(context).pushNamed('/food');
                },
              ),
              title: const Center(
                  child: Text('our resturant',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white))),
              actions: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.menu, size: 40.0),
                )
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Positioned(
                          top: -25.0,
                          left: -50.0,
                          child: Container(
                            transform: Matrix4.translationValues(0.0,
                                delayedCardAnimation.value * devHeight, 0.0),
                            width: 400.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        Positioned(
                          top: -15.0,
                          left: -30.0,
                          child: Container(
                            transform: Matrix4.translationValues(
                                0.0, cardAnimation.value * devHeight, 0.0),
                            width: 360.0,
                            height: 400.0,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                        Container(
                          width: 300.0,
                          height: 400.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/burger1.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          top: 320.0,
                          left: 12.0,
                          child: Container(
                            transform: Matrix4.translationValues(
                                0.0, infoAnimation.value * devHeight, 0.0),
                            width: 275.0,
                            height: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.red[800],
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 1.0,
                                      color: Colors.grey,
                                      spreadRadius: 3.0)
                                ]),
                            child: Container(
                              padding: const EdgeInsets.all(7.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Text(
                                        'Fares',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20.0,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(width: 4.0),
                                      Image.asset(
                                        'assets/images/burger1.jpg',
                                        height: 30.0,
                                        width: 30.0,
                                      ),
                                      const SizedBox(width: 110.0),
                                      const Text(
                                        '24 H/D',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20.0,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 9.0),
                                  Row(
                                    children: const <Widget>[
                                      Text(
                                        'Order Now',
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15.0,
                                            color: Colors.grey),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                  transform: Matrix4.translationValues(
                      0.0, fabButtonanim.value * devHeight, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FloatingActionButton(
                        elevation: 0.0,
                        onPressed: () {},
                        child: const Icon(
                          Icons.close,
                          color: Colors.red,
                          size: 40,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(
                              color: Colors.transparent,
                              style: BorderStyle.solid,
                              width: 2.0),
                        ),
                        // ignore: avoid_unnecessary_containers
                        child: Container(
                          child: Center(
                            child: IconButton(
                              icon: const Icon(Icons.comment,
                                  color: Colors.blue, size: 35),
                              color: Colors.lightBlueAccent[300],
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        elevation: 0.0,
                        onPressed: () {},
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 40,
                        ),
                        backgroundColor: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
