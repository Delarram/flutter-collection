


import 'package:flutter/material.dart';


class LabCenterNameList extends StatelessWidget {
  const LabCenterNameList({
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
              mainAxisSize: MainAxisSize.min
              ,
              children: [
                SizedBox(height: 15,),
                Text(
                  fontColor:
                  currentIndex == index ? Colors.teal: Colors.black87,
                   nameList[index],
                ),Spacer(),
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
          width: 15.w,
        );
      },
    );
  }
}
