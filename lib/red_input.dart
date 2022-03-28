// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'currencyservice.dart';

class InputRedPage extends StatefulWidget {
  final origCurrency;
  final convCurrency;

  const InputRedPage({Key? key, this.origCurrency, this.convCurrency})
      : super(key: key);

  @override
  _InputRedPageState createState() => _InputRedPageState();
}

class _InputRedPageState extends State<InputRedPage> {
  var currInput = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEC5759),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 85.0),
          InkWell(
            onTap: () {
              setState(() {
                currInput = 0;
              });
            },
            child: const Text(
              'tap to delete',
              style: TextStyle(
                  color: Color(0xFFF1ABAB),
                  fontSize: 20.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              currInput.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 100.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 25.0),
          numberRow(1, 2, 3),
          const SizedBox(height: 25.0),
          numberRow(4, 5, 6),
          const SizedBox(height: 25.0),
          numberRow(7, 8, 9),
          const SizedBox(height: 25.0),
          finalRow()
        ],
      ),
    );
  }

  Widget numberRow(number1, number2, number3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            calculateNumber(number1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: const Color(0xFFB73434)),
            child: Center(
              child: Text(
                number1.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(number2);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: const Color(0xFFB73434)),
            child: Center(
              child: Text(
                number2.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(number3);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: const Color(0xFFB73434)),
            child: Center(
              child: Text(
                number3.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget finalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            // calculateNumber(number1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: const Color(0xFFB73434)),
            child: const Center(
              child: Text(
                '.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calculateNumber(0);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: const Color(0xFFB73434)),
            child: Center(
              child: Text(
                0.toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            CurrencyService().convertCurrency(
                widget.origCurrency, widget.convCurrency, currInput, context);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0), color: Colors.white),
            child: const Center(
                child: Icon(
              Icons.check,
              color: Color(0xFFFC1514),
              size: 25.0,
            )),
          ),
        )
      ],
    );
  }

  calculateNumber(int number) {
    if (currInput == 0) {
      setState(() {
        currInput = number;
      });
    } else {
      setState(() {
        currInput = (currInput * 10) + number;
      });
    }
  }
}
