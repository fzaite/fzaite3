import 'dresslist.dart';
import 'package:flutter/material.dart';

class DetailInfo extends StatefulWidget {
  const DetailInfo({Key? key}) : super(key: key);

  @override
  _DetailInfoState createState() => _DetailInfoState();
}

class _DetailInfoState extends State<DetailInfo>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 5);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/pic4.jpeg'),
                      fit: BoxFit.cover),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    child: const Center(
                      child: Icon(Icons.shopping_basket, color: Colors.black),
                    ),
                    mini: true,
                    elevation: 0.0,
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 100.0),
                child: Text(
                  'Woman',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 37.0,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(height: 25.0),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Cutting-edge items to stay in style, perfect for all of your moments.',
              style: TextStyle(
                  fontFamily: 'Quicksand', fontSize: 17.0, color: Colors.black),
            ),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
            height: 100.0,
            child: ListView(
              padding: const EdgeInsets.only(left: 15.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/pic3.jpeg'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: const Center(
                    child: Text(
                      'New In',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/pic4.jpeg'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: const Center(
                    child: Text(
                      'Tops',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/pic5.jpeg'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: const Center(
                    child: Text(
                      'Pants',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/pic4.jpeg'),
                          fit: BoxFit.cover)),
                  height: 100.0,
                  width: 100.0,
                  child: const Center(
                    child: Text(
                      'Accessories',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: const <Widget>[
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Coats',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Jackets',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Blazers',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Dresses',
                    style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 350.0,
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                DressList(),
                DressList(),
                DressList(),
                DressList(),
                DressList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
