// ignore_for_file: deprecated_member_use
import 'food.dart';
import 'package:flutter/material.dart';

class Menupage extends StatelessWidget {
  const Menupage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/food': (BuildContext context) => const Food()
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int photoIndex = 0;

  List<String> photos = [
    'assets/images/burger1.jpg',
    'assets/images/burger2.jpg',
    'assets/images/burger3.jpg',
    'assets/images/burger4.jpg'
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: 35,
            onPressed: () {
              Navigator.of(context).pushNamed('/food');
            },
          ),
          title: const Center(
              child: Text('Menu',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white))),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.menu, size: 40.0),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                            image: AssetImage(photos[photoIndex]),
                            fit: BoxFit.cover)),
                    height: 500.0,
                    width: 330.0,
                  ),
                  Positioned(
                    top: 470.0,
                    left: 25.0,
                    right: 25.0,
                    child: SelectedPhoto(
                        numberOfDots: photos.length, photoIndex: photoIndex),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: const Text('Next'),
                  onPressed: _nextImage,
                  elevation: 10.0,
                  color: Colors.green,
                ),
                const SizedBox(width: 20.0),
                RaisedButton(
                  child: const Text('Prev'),
                  onPressed: _previousImage,
                  elevation: 5.0,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ));
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  // ignore: use_key_in_widget_constructors
  const SelectedPhoto({required this.numberOfDots, required this.photoIndex});

  Widget _inactivePhoto() {
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(4.0)),
      ),
    ));
  }

  Widget _activePhoto() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
