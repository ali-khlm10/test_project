import 'package:flutter/material.dart';
import 'package:flutter_application_1/Body.dart';
import 'package:flutter_application_1/BottomSheet.dart';
import 'package:flutter_application_1/BottomNavigationBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Body(height: height, width: width),
      bottomSheet: Show_Bottom_Sheet(
        height: height,
        width: width,
      ),
      bottomNavigationBar: const Show_Bottom_NavigationBar(),
    );
  }
}
