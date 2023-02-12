import 'package:flutter/material.dart';
import 'package:fluttercollection/resources/color_constant.dart';



class TableSection extends StatelessWidget {
  const TableSection({Key? key, required this.onTapTable}) : super(key: key);
  final VoidCallback onTapTable;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(width: 2,color: cPrimaryTeal),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                 "ID",
              ),
              Text(
                 "Date",
              ),
              Text(
                "Date",
              ),
              Text(
                "Date",
              ),
            ],
          ),
        ),
        ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: onTapTable,
              child: Container(
                decoration: BoxDecoration(
                    color:  index% 2 == 0 ?
                    Colors.white: Color(0xffF0F8FF),
                    border: Border.all(width: 0.5,color: Colors.grey.shade100)
                ),
                height: 60,
                child: Table(
                  children: [
                    TableRow(children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text(
                                "28.9.2023",
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    "Daw lay Ye",

                                  ),
                                )),
                          ),
                          const Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "2000000mmk",
                                  style: TextStyle(fontSize:12,fontWeight: FontWeight.bold
                                  ,fontFamily: "roboto"
                                  ),
                                ),
                              )),
                          Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 25, top: 10, bottom: 10),
                                child: Container(
                                    height: 30,
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape:BoxShape.circle,
                                        border: Border.all(
                                            width: 1, color: Colors.teal)),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape:BoxShape.circle,
                                            border: Border.all(
                                                width: 2, color: Colors.white)),
                                        child: const Center(
                                            child: Icon(Icons.check,color: Colors.teal,)
                                        ))),
                              )),
                        ],
                      )
                    ]),
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
