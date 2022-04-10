import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({Key? key}) : super(key: key);

  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: 15.0, right: 15.0, top: h * 0.03 + w * 0.03),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Recommended',
                  style: TextStyle(
                    fontSize: h * 0.018 + w * 0.01,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold,
                  )),
              Text('SEE ALL',
                  style: TextStyle(
                      fontSize: h * 0.016 + w * 0.010,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF469469)))
            ],
          ),
        ),
        SizedBox(
            height: h * 0.52,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                getCard('assets/images/food1.jpg', 'Granola with fruits'),
                getCard('assets/images/food2.jpg', 'Bread with avocado'),
              ],
            ))
      ],
    );
  }

  Widget getCard(String imgPath, String foodName) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(left: w * 0.07, top: h * 0.04, bottom: 4),
      child: Container(
          height: h * 0.2 + w * 0.055,
          width: h * 0.16 + w * 0.2,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                    blurRadius: 3.0,
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3.0)
              ]),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: h * 0.12 + w * 0.055,
                      width: h * 0.1 + w * 0.225,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0)),
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: h * 0.02 + w * 0.03,
                          width: h * 0.02 + w * 0.03,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w * 1),
                              color: Colors.white.withOpacity(0.5)),
                          child: const Center(
                            child: Icon(Icons.favorite, color: Colors.red),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: h * 0.005 + w * 0.010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    foodName,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.01 + w * 0.011,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.01 + w * 0.005,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Breakfast',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: h * 0.01 + w * 0.013,
                            color: Colors.grey.withOpacity(0.5)),
                      ),
                      SizedBox(
                        width: h * 0.01 + w * 0.009,
                      ),
                      Text(
                        'Light food',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            fontSize: h * 0.01 + w * 0.012,
                            color: Colors.grey.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.01 + w * 0.010,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: h * 0.01 + w * 0.018,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: h * 0.01 + w * 0.018,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: h * 0.01 + w * 0.018,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: h * 0.01 + w * 0.018,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.grey,
                        size: h * 0.01 + w * 0.018,
                      ),
                      SizedBox(
                        width: h * 0.01 + w * 0.015,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: h * 0.01 + w * 0.015,
                        ),
                      ),
                    ],
                  ),
                )
              ])),
    );
  }
}
