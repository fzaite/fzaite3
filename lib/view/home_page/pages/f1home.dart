import 'package:flutter/material.dart';
import '../widget/header.dart';
import '../widget/home2.dart';
import '../widget/home3.dart';
import '../widget/home4.dart';
import '../widget/home5.dart';
import '../widget/home6.dart';
import '../widget/line.dart';

class F1home extends StatefulWidget {
  const F1home({Key? key}) : super(key: key);

  @override
  State<F1home> createState() => _F1homeState();
}

class _F1homeState extends State<F1home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Header(),
          Home2(),
          SizedBox(height: 5.0),
          Line(),
          Home3(),
          SizedBox(height: 5.0),
          Line(),
          Home4(),
          SizedBox(height: 5.0),
          Line(),
          Home5(),
          SizedBox(height: 5.0),
          Line(),
          Home6(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
