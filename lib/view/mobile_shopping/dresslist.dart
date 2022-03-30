import 'package:flutter/material.dart';

class DressList extends StatelessWidget {
  const DressList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          children: <Widget>[
            const SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/pic1.jpeg',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                const Text(
                  '\$499',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/pic1.jpeg',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                const Text(
                  '\$499',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            const SizedBox(width: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/pic1.jpeg',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                const Text(
                  '\$499',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/pic1.jpeg',
                    fit: BoxFit.cover, height: 160.0, width: 160.0),
                const Text(
                  '\$499',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
