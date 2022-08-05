// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';

class Return_Baner_cards extends StatefulWidget {
  const Return_Baner_cards({
    Key? key,
  }) : super(key: key);

  @override
  State<Return_Baner_cards> createState() => _Return_Baner_cards();
}

class _Return_Baner_cards extends State<Return_Baner_cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 25),
      child: Card(
        shadowColor: Colors.black,
        elevation: 8,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: Colors.white,
        child: Container(
          width: 300.0,
          height: 50.0,
          child: Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Container(
                    color: Colors.red,
                  )),
              Expanded(flex: 4, child: Container(color: Colors.green)),
              Expanded(
                  flex: 4,
                  child: Container(
                    // padding: EdgeInsets.all(300),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/image2.png'))),
                    // child: Image.asset('assets/images/image1.png'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
