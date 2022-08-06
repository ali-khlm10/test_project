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
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        color: Colors.white,
        child: Container(
          width: 300.0,
          height: 50.0,
          child: Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                        margin: const EdgeInsets.only(
                            top: 15, bottom: 10, left: 30, right: 30),
                        // color: Colors.green,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromARGB(255, 156, 223, 159)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '(رای ۱۲) ۵,۴.۳',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 30, right: 30, bottom: 15),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Expanded(
                                  child: Align(
                                alignment: Alignment.center,
                                child: Icon(Icons.location_on_outlined,
                                    color: Color.fromARGB(255, 68, 128, 177)),
                              )),
                              const Expanded(
                                  child: Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.call,
                                  color: Color.fromARGB(255, 68, 128, 177),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ))
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: Container(
                    // color: Colors.green,
                    child: Column(children: [
                      Expanded(
                          child: Container(
                        // margin: EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.only(right: 5, top: 10),
                        // color: Colors.blue,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text('ماهر',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        // margin: EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.only(right: 5),
                        // color: Colors.blue,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'تنظیم موتور',
                          ),
                        ),
                      )),
                      Expanded(
                          child: Container(
                        // margin: EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.only(right: 5, bottom: 10),
                        // color: Colors.blue,
                        child: const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'خیابان مطهری',
                          ),
                        ),
                      ))
                    ]),
                  )),
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
