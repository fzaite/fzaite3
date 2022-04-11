import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fzaite3/view/home_page/widget/footer.dart';
import 'package:fzaite3/view/string.dart';
import 'pages/f1home.dart' as f1home;
import 'pages/f2home.dart' as f2home;
import 'pages/f3home.dart' as f3home;
import 'widget/footer.dart';
import '../restaurant/food.dart';
import '../travel/travel.dart';
import '../restaurant/profile.dart';
import '../others/request.dart';
import '../others/personal.dart';
import '../login/login.dart';
import '../others/foodrec.dart';
import '../others/cake.dart';
import '../furniture/furniture.dart';
import '../furniture/stats.dart';
import '../furniture/productdescription.dart';
import '../furniture/shopping.dart';
import '../others/cleandesigns.dart';
import '../fashion/fashion.dart';
import '../others/chefprofile.dart';
import '../others/hairstylist.dart';
import '../takeaway/takeaway.dart';
import '../currency/simple.dart';
import '../fruits/fruits.dart';
import '../others/myprofile.dart';
import '../others/carservice.dart';
import '../others/rentalcar.dart';
import '../mobile_shopping/mobile_shopping.dart';
import '../plants/plants.dart';
import '../others/scroll.dart';
import '../Cakes_pastries/cakes.dart';
import '../restaurant_reviews/restaurant_reviews.dart';
import '../others/starbucks.dart';
import '../rental_service/rental_service.dart';
import '../Food_Reviews/foodreviews.dart';
import '../fruity/fruity.dart';
import '../nutrition/nutritionapp.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/food': (BuildContext context) {
            return const Food();
          },
          '/travel': (BuildContext context) => const Travel(),
          '/card': (BuildContext context) => const Profile(),
          '/request': (BuildContext context) => const Request(),
          '/profile': (BuildContext context) => const Profilee(),
          '/sgin': (BuildContext context) => const Login(),
          '/fo': (BuildContext context) => const Fo(),
          '/cake': (BuildContext context) => const Cake(),
          '/furniture': (BuildContext context) => const Furniture(),
          '/stats': (BuildContext context) => const Stats(),
          '/Product_Description': (BuildContext context) =>
              const ProductDescription(),
          '/shopping': (BuildContext context) => const Shopping(),
          '/Cleandesigns': (BuildContext context) => const Cleandesigns(),
          '/Fashion': (BuildContext context) => const Fashion(),
          '/chef': (BuildContext context) => const Chef(),
          '/Hairstylist': (BuildContext context) => const Hairstylist(),
          '/takeaway': (BuildContext context) => const Takeaway(),
          '/simple': (BuildContext context) => const Simple(),
          '/Fruits': (BuildContext context) => const Fruits(),
          '/myprofile': (BuildContext context) => const Myprofile(),
          '/car': (BuildContext context) => const Car(),
          '/Rental': (BuildContext context) => const Rental(),
          '/mobile': (BuildContext context) => const Mobile(),
          '/Plants': (BuildContext context) => const Plants(),
          '/scroll': (BuildContext context) => const Scroll(),
          '/cakes': (BuildContext context) => const Cakes(),
          '/reviews': (BuildContext context) => const Restaurant(),
          '/Starbucks': (BuildContext context) => const Starbucks(),
          '/R': (BuildContext context) => const Rentalservice(),
          '/rentalservice': (BuildContext context) => const Rentalservice(),
          '/foodreviews': (BuildContext context) => const Foodreviews(),
          '/fruity': (BuildContext context) => const Fruity(),
          '/Nutritionapp': (BuildContext context) => const Nutrition(),
        },
        home: const MyHomePage(),
      ),
      designSize: const Size(360, 640),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(
              50,
            ),
            child: Text(
              // ignore: unnecessary_brace_in_string_interps
              '${h} ${controller.index + 1}',
              style: TextStyle(
                fontFamily: 'Fredoka',
                fontSize: MediaQuery.of(context).size.width * 0.07,
                color: Colors.white,
                shadows: const [
                  Shadow(
                    blurRadius: 7.0,
                    color: Colors.black,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottom: TabBar(
            controller: controller,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home_sharp,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.home_filled,
                  size: 30,
                ),
              )
            ]),
      ),
      bottomNavigationBar: const Footer(),
      body: TabBarView(
        controller: controller,
        children: const [
          f1home.F1home(),
          f2home.F2home(),
          f3home.F3home(),
        ],
      ),
    );
  }
}
