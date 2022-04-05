import 'package:flutter/material.dart';
import 'package:fzaite3/view/color.dart';
import 'package:fzaite3/view/string.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width,
        color: const Color(purple),
        child: const Center(
          child: Text(
            f,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Fredoka',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
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
