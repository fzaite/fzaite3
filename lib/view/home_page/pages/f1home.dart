import 'package:flutter/material.dart';
import '../widget/header.dart';
import '../widget/home2.dart';
import '../widget/home3.dart';
import '../widget/home4.dart';
import '../widget/home5.dart';
import '../widget/home6.dart';
import '../widget/home7.dart';
import '../widget/line.dart';

class F1home extends StatefulWidget {
  const F1home({Key? key}) : super(key: key);

  @override
  State<F1home> createState() => _F1homeState();
}

class _F1homeState extends State<F1home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Header(),
          const Home2(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home3(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home4(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home5(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home6(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home7(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
        ],
      ),
    );
  }
}
