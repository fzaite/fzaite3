import 'package:flutter/material.dart';
import 'package:fzaite3/view/color.dart';

class Home8 extends StatefulWidget {
  const Home8({Key? key}) : super(key: key);

  @override
  State<Home8> createState() => _Home8State();
}

class _Home8State extends State<Home8> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Row(children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/Cleandesigns');
        },
        child: Container(
          height: h * 0.04 + w * 0.06,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(purple), Color(lightpurple)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            constraints:
                BoxConstraints(maxWidth: w * 0.45 - 2, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Clean Designs",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: h * 0.017 + w * 0.03,
                fontFamily: 'Fredoka',
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/Fashion');
        },
        child: Container(
          height: h * 0.04 + w * 0.06,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(purple), Color(lightpurple)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            constraints:
                BoxConstraints(maxWidth: w * 0.45 - 2, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Fashion designs",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: h * 0.017 + w * 0.028,
                fontFamily: 'Fredoka',
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
