import 'package:flutter/material.dart';
import '../home_page/home.dart';

class Scroll extends StatelessWidget {
  const Scroll({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const MyApp(),
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
  late ScrollController _scrollController;

  List allSlides = [
    {'slideName': 'SlideOne', 'selected': false},
    {'slideName': 'SlideTwo', 'selected': false},
    {'slideName': 'SlideThree', 'selected': false},
    {'slideName': 'SlideFour', 'selected': false},
    {'slideName': 'SlideFive', 'selected': false},
    {'slideName': 'SlideSix', 'selected': false},
    {'slideName': 'SlideSeven', 'selected': false},
    {'slideName': 'SlideEight', 'selected': false},
    {'slideName': 'SlideNine', 'selected': false}
  ];

  // ignore: prefer_typing_uninitialized_variables
  var selectedSlide;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(changeSelector);
    setState(() {
      selectedSlide = allSlides[0];
      selectedSlide['selected'] = true;
    });
  }

  changeSelector() {
    var maxScrollVal = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollVal / allSlides.length) + 20;

    var scrollValue = _scrollController.offset.round();
    var slideValue = (scrollValue / divisor).round();

    var currentSlide = allSlides.indexWhere((slide) => slide['selected']);

    setState(() {
      allSlides[currentSlide]['selected'] = false;
      selectedSlide = allSlides[slideValue];
      selectedSlide['selected'] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
          icon: const Icon(
            Icons.home,
            size: 30,
          ),
        ),
        title: const Center(
          child: Text(
            'Scroll Tricks',
            style: TextStyle(
              fontFamily: 'Fredoka',
              fontSize: 26,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 7.0,
                  color: Colors.black,
                  offset: Offset(3.0, 3.0),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
          ),
        ],
      ),
      body: Row(
        children: <Widget>[
          const SizedBox(width: 15.0),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: ListView(
                children: allSlides.map((element) {
              return getTitles(element);
            }).toList()),
          ),
          const SizedBox(width: 10.0),
          SizedBox(
            width: (MediaQuery.of(context).size.width / 3) * 2 - 25.0,
            child: ListView(
              controller: _scrollController,
              children: allSlides.map(
                (element) {
                  return getCards(element);
                },
              ).toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget getCards(slide) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.orange[900],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
              color: Colors.orange, style: BorderStyle.solid, width: 1.0),
        ),
        height: 200.0,
        width: 125.0,
        child: Center(
          child: Text(
            slide['slideName'],
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }

  scrollToSlide(inputSlide) {
    var whichSlide = allSlides
        .indexWhere((slide) => slide['slideName'] == inputSlide['slideName']);

    var maxScrollValue = _scrollController.position.maxScrollExtent;

    var divisor = (maxScrollValue / allSlides.length) + 20;

    var scrollToValue = whichSlide * divisor;

    _scrollController.animateTo(scrollToValue,
        curve: Curves.easeIn, duration: const Duration(milliseconds: 500));
  }

  Widget getTitles(slide) {
    return InkWell(
      onTap: () {
        scrollToSlide(slide);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(
          slide['slideName'],
          style: TextStyle(
            fontWeight: slide['selected'] ? FontWeight.w900 : FontWeight.normal,
            fontSize: slide['selected'] ? 23.0 : 19,
            color: slide['selected'] ? Colors.orange[900] : Colors.orange[400],
            shadows: const [
              Shadow(
                blurRadius: 4.0,
                color: Colors.black,
                offset: Offset(1.0, 1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
