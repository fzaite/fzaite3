import 'package:flutter/material.dart';
import 'package:fzaite3/view/color.dart';

class Home14 extends StatefulWidget {
  const Home14({Key? key}) : super(key: key);

  @override
  State<Home14> createState() => _Home14State();
}

class _Home14State extends State<Home14> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Row(children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/scroll');
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
              "Scroll",
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
          Navigator.of(context).pushNamed('/cakes');
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
              "Cakes and pastries",
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
    ]);
  }
}
