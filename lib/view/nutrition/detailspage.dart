// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final heroTag;
  // ignore: prefer_typing_uninitialized_variables
  final foodName;
  // ignore: prefer_typing_uninitialized_variables
  final foodPrice;

  // ignore: use_key_in_widget_constructors
  const DetailsPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFF7A9BEE),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            iconSize: h * 0.02 + w * 0.025,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Details',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: h * 0.02 + w * 0.02,
                color: Colors.white),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
              iconSize: h * 0.02 + w * 0.025,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(height: h - 82.0, width: w, color: Colors.transparent),
            Positioned(
              top: h * 0.09 + w * 0.09,
              child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                      color: Colors.white),
                  height: h - 100.0,
                  width: w),
            ),
            Positioned(
                top: h * 0.02 + w * 0.03,
                left: (w / 2) - 100.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                        height: h * 0.2 + w * 0.08,
                        width: h * 0.2 + w * 0.08))),
            Positioned(
                top: h * 0.22 + w * 0.14,
                left: h * 0.02 + w * 0.02,
                right: h * 0.02 + w * 0.02,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.foodName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: h * 0.02 + w * 0.02,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: h * 0.02 + w * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(widget.foodPrice,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: h * 0.017 + w * 0.015,
                                color: Colors.grey)),
                        Container(
                            height: h * 0.02 + w * 0.03,
                            color: Colors.grey,
                            width: 1.0),
                        Container(
                          width: h * 0.13 + w * 0.10,
                          height: h * 0.03 + w * 0.034,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(h * 0.01 + w * 0.01),
                              color: const Color(0xFF7A9BEE)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: h * 0.02 + w * 0.03,
                                  width: h * 0.02 + w * 0.03,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: const Color(0xFF7A9BEE)),
                                  child: Center(
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: h * 0.019 + w * 0.017,
                                    ),
                                  ),
                                ),
                              ),
                              Text('2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontSize: h * 0.02 + w * 0.01)),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: h * 0.02 + w * 0.02,
                                  width: h * 0.02 + w * 0.02,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7.0),
                                      color: Colors.white),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: const Color(0xFF7A9BEE),
                                      size: h * 0.019 + w * 0.017,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: h * 0.03 + w * 0.015),
                    SizedBox(
                        height: h * 0.14 + w * 0.1,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _buildInfoCard('WEIGHT', '300', 'G'),
                            SizedBox(width: h * 0.01 + w * 0.01),
                            _buildInfoCard('CALORIES', '267', 'CAL'),
                            SizedBox(width: h * 0.01 + w * 0.01),
                            _buildInfoCard('VITAMINS', 'A, B6', 'VIT'),
                            SizedBox(width: h * 0.01 + w * 0.01),
                            _buildInfoCard('AVAIL', 'NO', 'AV')
                          ],
                        )),
                    SizedBox(height: h * 0.02 + w * 0.02),
                    Padding(
                      padding: EdgeInsets.only(bottom: h * 0.01 + w * 0.01),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(h * 0.002 + w * 0.02),
                                topRight: Radius.circular(h * 0.002 + w * 0.02),
                                bottomLeft:
                                    Radius.circular(h * 0.01 + w * 0.06),
                                bottomRight:
                                    Radius.circular(h * 0.01 + w * 0.06)),
                            color: Colors.black),
                        height: h * 0.05 + w * 0.02,
                        child: Center(
                          child: Text('\$52.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontSize: h * 0.0035 + w * 0.035)),
                        ),
                      ),
                    )
                  ],
                ))
          ])
        ]));
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(h * 0.002 + w * 0.02),
              color: cardTitle == selectedCard
                  ? const Color(0xFF7A9BEE)
                  : Colors.white,
              border: Border.all(
                  color: cardTitle == selectedCard
                      ? Colors.transparent
                      : Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: h * 0.002 + w * 0.008),
            ),
            height: h * 0.06 + w * 0.02,
            width: h * 0.1 + w * 0.04,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: h * 0.01 + w * 0.01, left: h * 0.01 + w * 0.01),
                    child: Text(cardTitle,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: h * 0.012 + w * 0.012,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.grey.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: h * 0.01 + w * 0.01, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(info,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                color: cardTitle == selectedCard
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(unit,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: cardTitle == selectedCard
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                  )
                ])));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
