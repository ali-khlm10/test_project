// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Return_Work_cards extends StatefulWidget {
  final String workTitle;
  const Return_Work_cards({
    Key? key,
    required this.workTitle,
  }) : super(key: key);

  @override
  State<Return_Work_cards> createState() => _Return_Work_cards();
}

class _Return_Work_cards extends State<Return_Work_cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      child: SelectableCard(
        text: widget.workTitle,
        card: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
          elevation: 8,
          shadowColor: Colors.black,
          child: Center(
              child: Text(
            widget.workTitle,
            style: const TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}



class SelectableCard extends StatefulWidget {
  final String text;
  final Card card;

  const SelectableCard({Key? key, required this.card, required this.text})
      : super(key: key);

  @override
  _SelectableCardState createState() => _SelectableCardState();
}

class _SelectableCardState extends State<SelectableCard> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelect = !isSelect;
        });
      },
      child: Card(
          color: isSelect
              ? const Color.fromARGB(255, 14, 42, 65)
              : widget.card.color,
          shape: widget.card.shape,
          margin: widget.card.margin,
          elevation: widget.card.elevation,
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(color: !isSelect ? Colors.black : Colors.white),
            ),
          )),
    );
  }
}
