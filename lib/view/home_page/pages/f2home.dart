import 'package:flutter/material.dart';
import '../widget/header.dart';
import '../widget/home7.dart';
import '../widget/home8.dart';
import '../widget/home9.dart';
import '../widget/home10.dart';
import '../widget/home11.dart';
import '../widget/line.dart';
import '../widget/footer.dart';

class F2home extends StatefulWidget {
  const F2home({Key? key}) : super(key: key);

  @override
  State<F2home> createState() => _F2homeState();
}

class _F2homeState extends State<F2home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Header(),
          Home7(),
          SizedBox(height: 5.0),
          Line(),
          Home8(),
          SizedBox(height: 5.0),
          Line(),
          Home9(),
          SizedBox(height: 5.0),
          Line(),
          Home10(),
          SizedBox(height: 5.0),
          Line(),
          Home11(),
          SizedBox(height: 15),
          Footer(),
        ],
      ),
    );
  }
}
