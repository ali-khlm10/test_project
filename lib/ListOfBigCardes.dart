// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Return_big_cards extends StatefulWidget {
  final int Index;
  const Return_big_cards({
    Key? key,
    required this.Index,
  }) : super(key: key);

  @override
  State<Return_big_cards> createState() => _Return_big_cards();
}

class _Return_big_cards extends State<Return_big_cards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: 300.0,
        height: 50.0,
        child: Center(child: Text("${widget.Index}")),
      ),
    );
  }
}
