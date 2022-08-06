import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final double height;
  final double width;
  const Body({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/image1.png',
      height: 3 * widget.height / 5,
    );
  }
}
