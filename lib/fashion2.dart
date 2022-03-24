import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final heroTag;

  // ignore: use_key_in_widget_constructors
  const SecondPage({this.heroTag});

  @override
  // ignore: no_logic_in_create_state
  _SecondPageState createState() => _SecondPageState(heroTag: heroTag);
}

class _SecondPageState extends State<SecondPage> {
  // ignore: prefer_typing_uninitialized_variables
  final heroTag;

  _SecondPageState({this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
              tag: heroTag,
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(heroTag), fit: BoxFit.cover)))),
          Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 3.0,
              child: Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width - 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/dress.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'LAMINATED',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5.0),
                            const Text(
                              'Louis vuitton',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14.0,
                                  color: Colors.grey),
                            ),
                            const SizedBox(height: 10.0),
                            SizedBox(
                              height: 30.0,
                              width: MediaQuery.of(context).size.width - 160.0,
                              child: const Text(
                                'One button V-neck sling long-sleeved waist female stitching dress',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 50.0,
                      height: 1.0,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SizedBox(
                            width: double.infinity,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  const Text(
                                    '\$400',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    child: const Center(
                                      child: Icon(Icons.arrow_forward_ios,
                                          color: Colors.white, size: 15.0),
                                    ),
                                    backgroundColor: const Color(0xFF916144),
                                    onPressed: () {},
                                    elevation: 0.0,
                                    mini: true,
                                  )
                                ])))
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 15.0,
            top: 55,
            child: Container(
              height: 35.0,
              width: 125.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white.withOpacity(0.7)),
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.arrow_back,
                          color: Colors.black, size: 30.0)),
                  const Text(
                    'Back',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
