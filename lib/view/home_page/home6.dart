import 'package:flutter/material.dart';

class Home6 extends StatefulWidget {
  const Home6({Key? key}) : super(key: key);

  @override
  State<Home6> createState() => _Home6State();
}

class _Home6State extends State<Home6> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Row(children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/furniture');
        },
        child: Container(
          height: 60.0,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 54, 6, 116),
                  Color.fromARGB(255, 111, 23, 182)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
            alignment: Alignment.center,
            child: const Text(
              "Furniture",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Fredoka',
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/stats');
        },
        child: Container(
          height: 60.0,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 54, 6, 116),
                  Color.fromARGB(255, 111, 23, 182)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: Container(
            constraints: BoxConstraints(maxWidth: w * 0.45, minHeight: 50.0),
            alignment: Alignment.center,
            child: const Text(
              "Stats",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    ]);
  }
}
