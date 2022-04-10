import 'package:flutter/material.dart';
import '../widget/header.dart';
import '../widget/home12.dart';
import '../widget/home13.dart';
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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Header(),
          Home12(),
          SizedBox(height: 5.0),
          Line(),
          Home13(),
          SizedBox(height: 5.0),
          Line(),
          Home14(),
          SizedBox(height: 5.0),
          Line(),
          Home15(),
          SizedBox(height: 5.0),
          Line(),
          Home16(),
          SizedBox(height: 5.0),
          Line(),
          Home17(),
        ],
      ),
    );
  }
}
