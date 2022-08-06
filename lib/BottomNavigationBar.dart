// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

class Show_Bottom_NavigationBar extends StatefulWidget {
  const Show_Bottom_NavigationBar({Key? key}) : super(key: key);

  @override
  State<Show_Bottom_NavigationBar> createState() =>
      _Show_Bottom_NavigationBarState();
}

class _Show_Bottom_NavigationBarState extends State<Show_Bottom_NavigationBar> {
  Widget Build_NavigationBar_Detail(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CircleNavBar(
      activeIcons: const [
        Icon(Icons.person),
        Icon(Icons.search),
        Icon(Icons.location_on_outlined),
        Icon(Icons.shopping_cart_outlined),
        Icon(Icons.home_outlined),
      ],
      inactiveIcons: [
        Build_NavigationBar_Detail(Icons.person, 'پروفایل'),
        Build_NavigationBar_Detail(Icons.search, 'جستجو'),
        Build_NavigationBar_Detail(Icons.location_on_outlined, 'لوکیشن'),
        Build_NavigationBar_Detail(Icons.shopping_cart_outlined, 'فروشگاه'),
        Build_NavigationBar_Detail(Icons.home_outlined, 'خانه'),
      ],
      color: Colors.white,
      height: 60,
      circleWidth: 60,
      initIndex: 1,
      onChanged: (v) {},
      shadowColor: Colors.black,
      elevation: 2,
    );
  }
}
