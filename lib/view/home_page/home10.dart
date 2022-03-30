import 'package:flutter/material.dart';

class Home10 extends StatefulWidget {
  const Home10({Key? key}) : super(key: key);

  @override
  State<Home10> createState() => _Home10State();
}

class _Home10State extends State<Home10> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Row(children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/takeaway');
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
            child: Text(
              "Takeaway ",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: w / 21,
                fontFamily: 'Fredoka',
              ),
            ),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/simple');
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
            child: Text(
              "Simple App",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: w / 21,
                fontFamily: 'Fredoka',
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
