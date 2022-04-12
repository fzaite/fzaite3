import 'package:flutter/material.dart';

class Radialmenu extends StatefulWidget {
  const Radialmenu({Key? key}) : super(key: key);

  @override
  _RadialmenuState createState() => _RadialmenuState();
}

class _RadialmenuState extends State<Radialmenu> {
  bool opened = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: <Widget>[
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: opened ? w / 2 - 40.0 : w / 2 - 150.0,
            top: (h / 2.7) - 30.0,
            child: _buildOption(
                const Icon(Icons.menu, color: Colors.white), Colors.purple)),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: opened ? w / 2 - 40.0 : (w / 2) - 120.0,
            top: opened ? (h / 2.7) - 40.0 : (h / 2.7) - 110.0,
            child: _buildOption(
                const Icon(Icons.home, color: Colors.white), Colors.purple)),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: opened ? w / 2 - 40.0 : (w / 2) + 80.0,
            top: (h / 2.7) - 30.0,
            child: _buildOption(
                const Icon(Icons.home, color: Colors.white), Colors.green)),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: opened ? w / 2 - 40.0 : (w / 2) + 50.0,
            top: opened ? (h / 2.7) - 40.0 : (h / 2.7) - 110.0,
            child: _buildOption(
                const Icon(Icons.home, color: Colors.white), Colors.green)),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: MediaQuery.of(context).size.width / 2 - 35.0,
            top: opened ? (h / 2.7) - 40.0 : (h / 2.7) - 150.0,
            child: _buildOption(
                const Icon(Icons.home, color: Colors.white), Colors.brown)),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: w / 2 - 35.0,
            top: opened ? (h / 2.7) - 40.0 : (h / 2.7) + 90.0,
            child: _buildOption(const Icon(Icons.home, color: Colors.white),
                Colors.deepOrange)),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: opened ? w / 2 - 40.0 : w / 2 - 120.0,
            top: opened ? (h / 2.7) - 40.0 : (h / 2.7) + 60.0,
            child: _buildOption(const Icon(Icons.home, color: Colors.white),
                Colors.deepOrange)),
        AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            left: opened ? w / 2 - 40.0 : w / 2 + 50.0,
            top: opened ? (h / 2.7) - 40.0 : (h / 2.7) + 60.0,
            child: _buildOption(const Icon(Icons.home, color: Colors.white),
                Colors.deepOrange)),
        Align(
          alignment: Alignment.center,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: opened
                ? InkWell(
                    key: UniqueKey(),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.blue),
                            child: const Center(
                                child: Icon(Icons.home, color: Colors.white)))),
                    onTap: () {
                      setState(() {
                        opened = false;
                      });
                    })
                : InkWell(
                    key: UniqueKey(),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Colors.red),
                            child: const Center(
                                child:
                                    Icon(Icons.close, color: Colors.white)))),
                    onTap: () {
                      setState(() {
                        opened = true;
                      });
                    }),
          ),
        )
      ],
    ));
  }

  Widget _buildOption(Icon icon, Color iconColor) {
    return AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return RotationTransition(child: child, turns: animation);
        },
        child: InkWell(
          key: UniqueKey(),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: iconColor),
                  child: Center(child: icon))),
          onTap: () {
            setState(() {
              opened = false;
            });
          },
        ));
  }
}
