import 'package:flutter/material.dart';
import 'package:fzaite3/view/color.dart';
import 'package:fzaite3/view/string.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 108.6,
          width: w,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bb1.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 23),
          child: Text(
            you,
            style: TextStyle(
              fontFamily: 'Fredoka',
              fontSize: w / 26,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: const Color(lightpurple),
              shadows: const [
                Shadow(
                  blurRadius: 4.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
