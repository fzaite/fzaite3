import 'package:flutter/material.dart';
import '../widget/header.dart';
import '../widget/home14.dart';
import '../widget/home15.dart';
import '../widget/home16.dart';
import '../widget/home17.dart';
import '../widget/line.dart';

class F3home extends StatefulWidget {
  const F3home({Key? key}) : super(key: key);

  @override
  State<F3home> createState() => _F3homeState();
}

class _F3homeState extends State<F3home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Header(),
          const Home14(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home15(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home16(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home17(),
        ],
      ),
    );
  }
}
