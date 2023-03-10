import 'package:flutter/material.dart';
import 'package:fluttercollection/resources/color_constant.dart';

import '../../widget/widget.dart';

class BottomNavBarView extends StatelessWidget {
  const BottomNavBarView({
    Key? key,
    required this.onClick,
    required this.index,
    this.isLogin = false,
  }) : super(key: key);

  final Function onClick;
  final int index;
  final bool? isLogin;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 8), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      onClick(0);
                    },
                    child: isLogin == false
                        ? Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/bottomnews.png",
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                          color:
                          index == 0 ? cPrimaryThree : cBackGroundTwo,
                        ),
                        CustomTextView(
                          text: "News",
                          fontSize: index == 0 ? 12 : 10,
                          fontColor:
                          index == 0 ? cPrimaryThree : cBackGroundTwo,
                        )
                      ],
                    )
                        : Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/patient1.png",
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                          color:
                          index == 0 ? cPrimaryThree : cBackGroundTwo,
                        ),
                        CustomTextView(
                          text: "Patients",
                          fontSize: index == 0 ? 12 : 10,
                          fontColor:
                          index == 0 ? cPrimaryThree : cBackGroundTwo,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onClick(1);
                    },
                    child: isLogin == false
                        ? Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/bottomtest.png",
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                          color:
                          index == 1 ? cPrimaryThree : cBackGroundTwo,
                        ),
                        CustomTextView(
                          text: "Tests",
                          fontSize: index == 1 ? 12 : 10,
                          fontColor:
                          index == 1 ? cPrimaryThree : cBackGroundTwo,
                        )
                      ],
                    )
                        : Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/bottomtest.png",
                          height: 20,
                          width: 20,
                          fit: BoxFit.cover,
                          color:
                          index == 1 ? cPrimaryThree : cBackGroundTwo,
                        ),
                        CustomTextView(
                          text: "Tests",
                          fontSize: index == 1 ? 12 : 10,
                          fontColor:
                          index == 1 ? cPrimaryThree : cBackGroundTwo,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onClick(3);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/medical.png",
                          height: 18,
                          width: 18,
                          fit: BoxFit.cover,
                          color: index == 3 ? cPrimaryThree : cBackGroundTwo,
                        ),
                        isLogin == false
                            ? CustomTextView(
                          text: "Labs",
                          fontSize: index == 3 ? 12 : 10,
                          fontColor:
                          index == 3 ? cPrimaryThree : cBackGroundTwo,
                        )
                            : CustomTextView(
                          text: "Bookings",
                          fontSize: index == 3 ? 12 : 10,
                          fontColor:
                          index == 3 ? cPrimaryThree : cBackGroundTwo,
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onClick(4);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/user.png",
                          height: 23,
                          width: 23,
                          fit: BoxFit.cover,
                          color: index == 4 ? cPrimaryThree : cBackGroundTwo,
                        ),
                        isLogin == false
                            ? CustomTextView(
                          text: "Profile",
                          fontSize: index == 4 ? 12 : 10,
                          fontColor: index == 4
                              ? cPrimaryThree
                              : cBackGroundTwo,

                        )
                            : CustomTextView(
                          text: "Settings",
                          fontSize: index == 4 ? 12 : 10,
                          fontColor: index == 4
                              ? cPrimaryThree
                              : cBackGroundTwo,


                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          isLogin == false
              ? Container()
              : Positioned(
            top: -30,
            right: 10,
            left: 0,
            child: GestureDetector(
              onTap: () {
                onClick(2);
              },
              child: Container(
                height: 55,
                width: 55,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: cPrimaryThree.withOpacity(0.5),
                    shape: BoxShape.circle),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cPrimaryThree,
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.white.withOpacity(0.3),
                      //   spreadRadius: 5,
                      //   blurRadius: 7,
                      //   offset: const Offset(0, 2), // changes position of shadow
                      // ),
                    ],
                  ),
                  child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32,
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
