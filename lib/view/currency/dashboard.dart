// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'currency_list.dart';
import 'currencyservice.dart';
import 'red_input.dart';
import 'white_input.dart';

class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyone;
  final currencytwo;
  final isWhite;

  const DashboardPage(
      {Key? key,
      this.currencyVal,
      this.convertedCurrency,
      this.currencyone,
      this.currencytwo,
      this.isWhite})
      : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white),
          Container(
              height: MediaQuery.of(context).size.height / 2.0,
              width: MediaQuery.of(context).size.width,
              color: const Color(0xFFEC5759)),
          Positioned(
              top: 50,
              left: 10,
              child: IconButton(
                  icon: const Icon(Icons.home),
                  color: Colors.white,
                  iconSize: 35,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/home');
                  })),
          Center(
              child: Column(
            children: <Widget>[
              const SizedBox(height: 100),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (context) => const CurrencyList()));
                },
                child: Text(
                  CurrencyService().getCurrencyString(widget.currencyone),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontFamily: 'Quicksand'),
                ),
              ),
              const SizedBox(height: 20.0),
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => InputRedPage(
                            origCurrency: widget.currencyone,
                            convCurrency: widget.currencytwo),
                      ),
                    );
                  },
                  child: Text(
                    widget.currencyVal.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 120.0,
                        fontFamily: 'Quicksand'),
                  )),
              Text(
                widget.currencyone,
                style: const TextStyle(
                    color: Color(0xFFFFB6B6),
                    fontSize: 17.0,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25.0),
              Container(
                height: 125.0,
                width: 125.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(62.5),
                    color: Colors.white,
                    border: Border.all(
                        color: const Color(0xFFEC5759),
                        style: BorderStyle.solid,
                        width: 5.0)),
                child: Center(
                  child: widget.isWhite
                      ? const Icon(
                          Icons.arrow_upward,
                          size: 60.0,
                          color: Color(0xFFEC5759),
                        )
                      : const Icon(
                          Icons.arrow_downward,
                          size: 60.0,
                          color: Color(0xFFEC5759),
                        ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                widget.currencytwo,
                style: const TextStyle(
                    color: Color(0xFFFFB6B6),
                    fontSize: 17.0,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => InputWhitePage(
                          origCurrency: widget.currencyone,
                          convCurrency: widget.currencytwo)));
                },
                child: Text(
                  widget.convertedCurrency.toString(),
                  style: const TextStyle(
                      color: Color(0xFFEC5759),
                      fontSize: 120.0,
                      fontFamily: 'Quicksand'),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                CurrencyService().getCurrencyString(widget.currencytwo),
                style: const TextStyle(
                    color: Color(0xFFEC5759),
                    fontSize: 22.0,
                    fontFamily: 'Quicksand'),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
