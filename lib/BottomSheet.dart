// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ListOfWorkCards.dart';
import 'package:flutter_application_1/ListOfBanerCards.dart';

class Show_Bottom_Sheet extends StatefulWidget {
  final double height;
  final double width;
  const Show_Bottom_Sheet({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  State<Show_Bottom_Sheet> createState() => _Show_Bottom_SheetState();
}

class _Show_Bottom_SheetState extends State<Show_Bottom_Sheet> {
  TextEditingController nameController = TextEditingController();
  String serachResult = '';
  List WorkList = <String>[
    'تعویض پلاک',
    'صافکاری',
    'کارواش',
    'مکانیکی',
    'لوازم یدکی',
    'خشک شویی'
  ];
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        backgroundColor: const Color.fromARGB(255, 241, 236, 236),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )),
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 2 * widget.height / 5,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8)),
                        color: Colors.orange,
                      ),
                    )),
                Expanded(
                  flex: 23,
                  child: Row(children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                          margin: const EdgeInsets.only(
                              top: 8, bottom: 8, right: 5, left: 15),
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              color: Colors.white),
                          child: Material(
                            shadowColor: Colors.black,
                            elevation: 8,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: TextField(
                              textInputAction: TextInputAction.done,
                              controller: nameController,
                              decoration: const InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 15),
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                  fillColor: Colors.white),
                              onChanged: (text) {
                                setState(() {
                                  serachResult = text;
                                });
                              },
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shadowColor: Colors.black,
                            elevation: 8,
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(13),
                          ),
                          child: const Icon(
                            Icons.list,
                            color: Color.fromARGB(255, 58, 9, 148),
                            size: 25,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                Expanded(
                  flex: 23,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: WorkList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Return_Work_cards(
                        workTitle: WorkList[index],
                      );
                    },
                  ),
                  // child: ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   children: List.generate(20, (int index) {
                  //     return const Return_little_cards();
                  //   }),
                  // ),
                ),
                Expanded(
                  flex: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Return_Baner_cards();
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
