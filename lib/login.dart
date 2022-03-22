import 'package:flutter/material.dart';
import 'home.dart';
import 'sginup.dart';
import 'profile.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp(),
        '/signup': (BuildContext context) => const Signup(),
        '/Profile': (BuildContext context) => const Profile()
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
    // ignore: unused_local_variable
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
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  },
                ),
                title: const Center(
                    child: Text('LogIn',
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
                        child: Stack(children: <Widget>[
                          Container(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 110.0, 0.0, 0.0),
                            child: const Text('Hello',
                                style: TextStyle(
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 175.0, 0.0, 0.0),
                            child: const Text('There',
                                style: TextStyle(
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(
                                220.0, 175.0, 0.0, 0.0),
                            child: const Text('.',
                                style: TextStyle(
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                          ),
                        ])),
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
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green))),
                              ),
                              const SizedBox(height: 20.0),
                              const TextField(
                                decoration: InputDecoration(
                                    labelText: 'PASSWORD',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.green))),
                                obscureText: true,
                              ),
                              const SizedBox(height: 5.0),
                              Container(
                                alignment: const Alignment(1.0, 0.0),
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 20.0),
                                child: const InkWell(
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat',
                                        decoration: TextDecoration.underline),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 40.0),
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
                                        'LOGIN',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const <Widget>[
                                      Center(
                                        child: ImageIcon(AssetImage(
                                            'assets/images/facebook.png')),
                                      ),
                                      SizedBox(width: 10.0),
                                      Center(
                                        child: Text('Log in with facebook',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Montserrat')),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                    ),
                    const SizedBox(height: 15.0),
                    Transform(
                      transform: Matrix4.translationValues(
                          animation.value * width, 0.0, 0.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'New to Spotify ?',
                              style: TextStyle(fontFamily: 'Montserrat'),
                            ),
                            const SizedBox(width: 5.0),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/signup');
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                          ]),
                    )
                  ]));
        });
  }
}
