


import 'package:flutter/material.dart';
import 'package:fluttercollection/widget/widget.dart';


class NameList extends StatelessWidget {
  const NameList({
    Key? key,
    required this.onClick,
    required this.currentIndex,
  }) : super(key: key);
  final Function onClick;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    List<String> nameList = [
      "Mogok",
      "Yangon",
      "Taungyi",
      "Mandalay",
      "MoeMate",
      "Lashio",
      "England"
    ];
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: nameList.length,
      padding: EdgeInsets.symmetric(horizontal: 15,),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            onClick(index);
          },
          child: Container(
            decoration: BoxDecoration(
              color: currentIndex == index ? Colors.white : Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 15,),
                CustomTextView(
                  fontColor:
                  currentIndex == index ? Colors.teal: Colors.black87,
                   text:nameList[index],
                ),const Spacer(),
                Container(
                  height: 2,
                  width: 60,
                  color: currentIndex == index ? Colors.teal: Colors.transparent,
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 15,
        );
      },
    );
  }
}
