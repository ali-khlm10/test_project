// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Float_action_buttons extends StatefulWidget {
  const Float_action_buttons({Key? key}) : super(key: key);

  @override
  State<Float_action_buttons> createState() => _Float_action_buttonsState();
}

class _Float_action_buttonsState extends State<Float_action_buttons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 120,
      margin: const EdgeInsets.only(bottom: 130),
      child: Column(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 90, top: 2, bottom: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromARGB(255, 245, 246, 247),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 7,
                    child: Container(
                      // color: Colors.black,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'دعوت به همکاری',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 4,
                    child: Container(
                      // color: Colors.orange,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.orangeAccent,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Icon(
                            FontAwesomeIcons.handshake,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          )),
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(left: 40, top: 2, bottom: 2),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.only(right: 5, left: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color.fromARGB(255, 245, 246, 247),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 7,
                              child: Container(
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'نمایش لیست',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 4,
                              child: Container(
                                child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor:
                                      const Color.fromARGB(255, 21, 86, 139),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: Icon(
                                      Icons.list,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor:
                              const Color.fromARGB(255, 21, 86, 139),
                          child: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
