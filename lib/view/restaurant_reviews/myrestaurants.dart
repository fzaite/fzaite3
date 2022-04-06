import 'package:flutter/material.dart';

class MyRestaurants extends StatefulWidget {
  const MyRestaurants({Key? key}) : super(key: key);

  @override
  _MyRestaurantsState createState() => _MyRestaurantsState();
}

class _MyRestaurantsState extends State<MyRestaurants> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      primary: false,
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      shrinkWrap: true,
      children: <Widget>[
        _buildCard('Tropical fruits', 'Greyish day', '20-05-18', '5',
            'assets/images/tropic.jpg'),
        _buildCard('Orange fruits', 'Portugecis', '20-05-18', '4',
            'assets/images/oranges.jpg'),
        _buildCard('Springfield', 'States Dishes', '20-05-18', '5',
            'assets/images/berries.jpg'),
        _buildCard('Breakfast Dine', 'Costa Rica', '20-05-18', '3',
            'assets/images/almonds.jpg'),
      ],
    );
  }

  _buildCard(String restaurantName, String type, String date, String rating,
      String imgPath) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(7.0),
      height: h / 5,
      width: w / 4,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 3.0,
            spreadRadius: 3.0,
            color: Colors.grey.withOpacity(0.4))
      ]),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: h / 10 + w / 17,
                width: h / 4 + w / 7,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              Positioned(
                top: h / 13,
                left: w / 3,
                child: Container(
                    height: w / 15,
                    width: w / 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),
                        color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        const SizedBox(width: 4.0),
                        Text(
                          rating,
                          style: TextStyle(color: Colors.red, fontSize: w / 40),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: w / 40,
                        )
                      ],
                    )),
              )
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            restaurantName,
            style: TextStyle(
                color: const Color(0xFF233467),
                fontFamily: 'Montserrat',
                fontSize: w / 30),
          ),
          SizedBox(height: h / 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                type,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontSize: w / 38),
              ),
              Text(
                date,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Montserrat',
                    fontSize: w / 38),
              ),
            ],
          )
        ],
      ),
    );
  }
}
