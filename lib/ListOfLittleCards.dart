// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Return_little_cards extends StatefulWidget {
  final int Index;
  const Return_little_cards({
    Key? key,
    required this.Index,
  }) : super(key: key);

  @override
  State<Return_little_cards> createState() => _Return_little_cards();
}

class _Return_little_cards extends State<Return_little_cards> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        width: 80.0,
        height: 50.0,
        child: Center(child: Text("${widget.Index}")),
      ),
    );
  }
}
