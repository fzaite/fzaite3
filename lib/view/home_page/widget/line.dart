import 'package:flutter/material.dart';
import 'package:fzaite3/view/color.dart';

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
      height: 2.5,
      width: w * 0.80,
      color: const Color(purple),
    );
  }
}
