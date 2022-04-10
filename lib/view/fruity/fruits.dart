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
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildFoodCard(
            'assets/images/avocado.png',
            '\$18.78',
            'Big single avocado fresh imported fruits from the Mexican Avocado collection',
            '0xFF57874E'),
        _buildFoodCard(
            'assets/images/grapes.png',
            '\$10.78',
            'Big single avocado fresh imported fruits from the Mexican Avocado collection',
            '0xFF8FC03A')
      ],
    );
  }

  Widget _buildFoodCard(
      String imgPath, String price, String desc, String cardColor) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          height: h * 1 + w * 1,
          width: h * 0.2 + w * 0.3,
          decoration: BoxDecoration(
              color: Color(int.parse(cardColor)),
              borderRadius: BorderRadius.circular(15.0)),
          child: Column(children: [
            SizedBox(
              height: h * 0.02 + w * 0.02,
            ),
            Image.asset(
              imgPath,
              fit: BoxFit.cover,
              height: h * 0.1 + w * 0.03,
            ),
            SizedBox(
              height: h * 0.01 + w * 0.02,
            ),
            Text(
              price,
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.white,
                fontSize: h * 0.02 + w * 0.012,
              ),
            ),
            SizedBox(
              height: h * 0.01 + w * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Text(desc,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    color: Colors.white,
                    fontSize: h * 0.010 + w * 0.013,
                  )),
            ),
            SizedBox(
              height: h * 0.01 + w * 0.01,
            ),
            InkWell(
                onTap: () {},
                child: Container(
                  height: h * 0.03 + w * 0.02,
                  width: h * 0.1 + w * 0.2,
                  decoration: BoxDecoration(
                      color: const Color(0xFF89AC83),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: const Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                          fontFamily: 'Quicksand', color: Colors.white),
                    ),
                  ),
                ))
          ])),
    );
  }
}
