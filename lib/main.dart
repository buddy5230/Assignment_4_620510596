import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: primaryBlack,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //debugShowCheckedModeBanner: false,
      appBar: AppBar(
      title: const Center(child: Text('Chiang Mai'),),
      actions: [
        IconButton(onPressed: null, icon: Icon(Icons.ios_share,size: 25,color: Colors.white,)),
        IconButton(onPressed: null, icon: Icon(Icons.favorite_border,size: 25,color: Colors.white,))
      ],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios), onPressed: () {  },
        ),
     ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              child: MaterialButton(
                minWidth: 280,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)),
                color: Color(0xff99CCFF),
                child: const Text(
                  "Select a room",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: Carousel(
                  images: [
                    Image.asset('images/h2.jpg'),
                    Image.asset('images/h3.jpg'),
                    Image.asset('images/h4.jpg'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  indicatorBgPadding: 5.0,
                  borderRadius: true,
                )
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'UNESCO Sustainable Travel Pledge', style: TextStyle(fontSize: 14,color: Colors.grey),
                  ),
                  Text(
                    'Shangri-La Chiang Mai',
                    style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.grey, size: 15),
                      Icon(Icons.star, color: Colors.grey, size: 15),
                      Icon(Icons.star, color: Colors.grey, size: 15),
                      Icon(Icons.star, color: Colors.grey, size: 15),
                      Icon(Icons.star, color: Colors.grey, size: 15),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Luxury hotel with free water park, '
                          'near Chiang Mai Night Bazaar\n', style: TextStyle(fontSize: 14,color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '9.0/10 Superb',
                    style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  Text(
                      '1,000 verified Hotels.com guest reviews\n', style: TextStyle(fontSize: 14,color: Colors.grey),
                  ),
                  Text(
                    'See all 1,000 reviews >',
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.lightBlueAccent),
                  ),
                ],
              ),
            ),
            Text(
              '  Popular amenities',
              style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(Icons.wifi, size: 30,color: Colors.grey),
                        Text('   Free wifi', style: TextStyle(fontSize: 20,color: Colors.grey))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(Icons.pool, size: 30,color: Colors.grey),
                        Text('   Pool', style: TextStyle(fontSize: 20,color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),

            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.ac_unit, size: 30,color: Colors.grey),
                        Text('   Air conditioning', style: TextStyle(fontSize: 20,color: Colors.grey))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.directions_car_rounded, size: 30,color: Colors.grey),
                        Text('   Free Parking', style: TextStyle(fontSize: 20,color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.fitness_center, size: 30,color: Colors.grey),
                        Text('   Gym', style: TextStyle(fontSize: 20,color: Colors.grey))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.thermostat_outlined, size: 30,color: Colors.grey),
                        Text('   Refrigerator', style: TextStyle(fontSize: 20,color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/h5.png'), fit: BoxFit.fill),
            ),)
          ],
        ),
      ),
      ),
    );

  }
}
