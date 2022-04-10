import 'package:flutter/material.dart';
import 'package:fzaite3/view/color.dart';

class Home17 extends StatefulWidget {
  const Home17({Key? key}) : super(key: key);

  @override
  State<Home17> createState() => _Home17State();
}

class _Home17State extends State<Home17> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Row(children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('/fruity');
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
              "Fruits",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: h * 0.018 + w * 0.03,
                fontFamily: 'Fredoka',
              ),
            ),
          ),
        ),
      ),
      // GestureDetector(
      //   onTap: () {
      //     Navigator.of(context).pushNamed('/foodreviews');
      //   },
      //   child: Container(
      //     height: h * 0.04 + w * 0.06,
      //     margin: const EdgeInsets.all(10),
      //     decoration: BoxDecoration(
      //         gradient: const LinearGradient(
      //           colors: [Color(purple), Color(lightpurple)],
      //           begin: Alignment.centerLeft,
      //           end: Alignment.centerRight,
      //         ),
      //         borderRadius: BorderRadius.circular(15.0)),
      //     child: Container(
      //       constraints:
      //           BoxConstraints(maxWidth: w * 0.45 - 2, minHeight: 50.0),
      //       alignment: Alignment.center,
      //       child: Text(
      //         "Food Reviews",
      //         textAlign: TextAlign.center,
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: h * 0.02 + w * 0.03,
      //           fontFamily: 'Fredoka',
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    ]);
  }
}
