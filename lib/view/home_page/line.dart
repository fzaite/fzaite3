import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({Key? key}) : super(key: key);

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: 2.0,
      width: w * 0.86,
      color: const Color(0xFF5D17AD),
    );
  }
}
