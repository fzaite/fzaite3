import 'package:flutter/material.dart';
import 'home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => const MyApp()
    },
  );
}

class _SignupPageState extends State<Signup>
    with SingleTickerProviderStateMixin {
  late Animation animation, delayedAnimation, muchDelayedAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: Curves.fastOutSlowIn, parent: animationController));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        curve: const Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
        parent: animationController));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green[600],
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
                    child: Text('Registration',
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
              resizeToAvoidBottomInset: false,
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0.0, 0.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  15.0, 110.0, 0.0, 0.0),
                              child: const Text(
                                'Signup',
                                style: TextStyle(
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(
                                  260.0, 125.0, 0.0, 0.0),
                              child: const Text(
                                '.',
                                style: TextStyle(
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            )
                          ],
                        )),
                    Transform(
                      transform: Matrix4.translationValues(
                          animation.value * width, 0.0, 0.0),
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 35.0, left: 20.0, right: 20.0),
                          child: Column(
                            children: <Widget>[
                              const TextField(
                                decoration: InputDecoration(
                                    labelText: 'EMAIL',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    // hintText: 'EMAIL',
                                    // hintStyle: ,
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green))),
                              ),
                              const SizedBox(height: 10.0),
                              const TextField(
                                decoration: InputDecoration(
                                    labelText: 'PASSWORD ',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              const SizedBox(height: 10.0),
                              const TextField(
                                decoration: InputDecoration(
                                    labelText: 'NICK NAME ',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green))),
                              ),
                              const SizedBox(height: 50.0),
                              SizedBox(
                                  height: 40.0,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20.0),
                                    shadowColor: Colors.greenAccent,
                                    color: Colors.green,
                                    elevation: 7.0,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const Center(
                                        child: Text(
                                          'SIGNUP',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat'),
                                        ),
                                      ),
                                    ),
                                  )),
                              const SizedBox(height: 20.0),
                              Container(
                                height: 40.0,
                                color: Colors.transparent,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black,
                                          style: BorderStyle.solid,
                                          width: 1.0),
                                      color: Colors.transparent,
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Center(
                                      child: Text('Go Back',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Montserrat')),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      // SizedBox(height: 15.0),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: <Widget>[
                      //     Text(
                      //       'New to Spotify?',
                      //       style: TextStyle(
                      //         fontFamily: 'Montserrat',
                      //       ),
                      //     ),
                      //     SizedBox(width: 5.0),
                      //     InkWell(
                      //       child: Text('Register',
                      //           style: TextStyle(
                      //               color: Colors.green,
                      //               fontFamily: 'Montserrat',
                      //               fontWeight: FontWeight.bold,
                      //               decoration: TextDecoration.underline)),
                      //     )
                      //   ],
                      // )
                    )
                  ]));
        });
  }
}
