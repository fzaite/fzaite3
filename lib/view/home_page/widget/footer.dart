import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        color: Colors.purple[900],
        child: Center(
          child: Text(
            'Fares Alzaite',
            style: TextStyle(
              fontSize: w * .05,
              fontFamily: 'Fredoka',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: const [
                Shadow(
                  blurRadius: 7.0,
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
          ),
        ));
  }
}
