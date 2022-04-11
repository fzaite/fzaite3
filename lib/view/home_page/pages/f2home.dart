import 'package:flutter/material.dart';
import '../widget/header.dart';
import '../widget/home8.dart';
import '../widget/home9.dart';
import '../widget/home10.dart';
import '../widget/home11.dart';
import '../widget/home12.dart';
import '../widget/home13.dart';
import '../widget/line.dart';

class F2home extends StatefulWidget {
  const F2home({Key? key}) : super(key: key);

  @override
  State<F2home> createState() => _F2homeState();
}

class _F2homeState extends State<F2home> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Header(),
          const Home8(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home9(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home10(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home11(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home12(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
          const Line(),
          const Home13(),
          SizedBox(
            height: h * 0.005 + w * 0.005,
          ),
        ],
      ),
    );
  }
}
