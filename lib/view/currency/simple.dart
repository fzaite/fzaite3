import 'package:flutter/material.dart';
import 'dashboard.dart';
import '../home_page/home.dart';

class Simple extends StatelessWidget {
  const Simple({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: DashboardPage(
            currencyVal: 0.0,
            convertedCurrency: 0.0,
            currencyone: 'USD',
            currencytwo: 'RUB',
            isWhite: false));
  }
}
