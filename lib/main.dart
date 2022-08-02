import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'For Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // const MyHomePage({Key? key, required this.title}) : super(key: key);
  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image.asset("assets/images/image1.png")],
      ),
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.person),
          Icon(Icons.search),
          Icon(Icons.location_on_outlined),
          Icon(Icons.shopping_cart_outlined),
          Icon(Icons.home_outlined),
        ],
        inactiveIcons: [
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: const [
                Icon(Icons.person),
                Text('پروفایل'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: const [
                Icon(Icons.search),
                Text('جستجو'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: const [
                Icon(Icons.location_on_outlined),
                Text('لوکیشن'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: const [
                Icon(Icons.shopping_cart_outlined),
                Text('فروشگاه'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Column(
              children: const [
                Icon(Icons.home_outlined),
                Text('خانه'),
              ],
            ),
          ),
        ],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        initIndex: 1,
        onChanged: (v) {
          // TODO
        },
        // tabCurve: ,
        // padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        // cornerRadius: const BorderRadius.only(
        //   topLeft: Radius.circular(8),
        //   topRight: Radius.circular(8),
        //   bottomRight: Radius.circular(24),
        //   bottomLeft: Radius.circular(24),
        // ),
        shadowColor: Colors.black,
        elevation: 2,
      ),
    );
  }
}
