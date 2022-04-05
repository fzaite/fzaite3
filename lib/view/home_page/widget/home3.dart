import 'package:flutter/material.dart';
import 'package:fzaite3/view/color.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/request');
          },
          child: Container(
            height: 60.0,
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
                "Request",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w / 23,
                  fontFamily: 'Fredoka',
                ),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/card');
          },
          child: Container(
            height: 60.0,
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
                "Card",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: w / 23,
                  fontFamily: 'Fredoka',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
