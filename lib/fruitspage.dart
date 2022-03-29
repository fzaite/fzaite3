import 'package:flutter/material.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({Key? key}) : super(key: key);

  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                getFoodCard(
                    'assets/images/picone.jpeg', 'orange', '0.75', true),
                getFoodCard('assets/images/pictwo.jpeg', 'kiwi', '0.25', false),
                getFoodCard(
                    'assets/images/picthree.jpeg', 'banana', '0.25', true),
                const SizedBox(height: 15.0)
              ],
            ),
            Column(
              children: <Widget>[
                const SizedBox(height: 25.0),
                getFoodCard(
                    'assets/images/picfour.jpeg', 'Pineapple', '0.25', true),
                getFoodCard(
                    'assets/images/picfive.jpeg', 'Lemon', '0.25', false),
                getFoodCard(
                    'assets/images/picone.jpeg', 'banana', '0.25', true),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget getFoodCard(
      String imgPath, String fruitName, String price, bool isFav) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
      child: Container(
        height: 200.0,
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                  blurRadius: 2.0,
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 1.0)
            ]),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: isFav
                          ? const Icon(Icons.favorite, color: Colors.red)
                          : const Icon(Icons.favorite_border,
                              color: Colors.red)),
                )
              ],
            ),
            const SizedBox(height: 15.0),
            Text(
              fruitName,
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '\$' + price + ' each',
              style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 14.0,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
