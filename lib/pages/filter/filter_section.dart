import 'package:flutter/material.dart';

import '../../resources/color_constant.dart';
import '../../widget/button.dart';
import '../../widget/widget.dart';


class ChooseTestListFilterSection extends StatelessWidget {
  const ChooseTestListFilterSection({
    Key? key,
    required this.onPressReset,
    required this.onPressConfirm,
    required this.categoryTestList,
    required this.selectedTest,
    required this.onChangeTestList,
  }) : super(key: key);

  final List<String> categoryTestList;
  final String selectedTest;
  final Function onChangeTestList;
  final Function onPressReset;
  final Function onPressConfirm;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        // margin: EdgeInsets.only(bottom: 20),
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border.symmetric(
                horizontal: BorderSide(color: Colors.black26))),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            const CustomTextView(
              text: "Search filter by:",
              fontColor: cPrimaryThree,
            ),
            SizedBox(height: 15,),
            const CustomTextView(
              text: "Choose books",
              fontWeight: FontWeight.w500,
              fontColor: cBackGroundTwo,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButtonView(
                      width: double.infinity,
                      text: "Reset",
                      buttonColor: Colors.white,
                      onPressed: () {
                        onPressReset();
                      },
                      height: 40,
                      fontColor: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: CustomButtonView(
                      width: double.infinity,
                      buttonColor: cPrimaryThree,
                      text: "Search",
                      onPressed: () {
                        onPressConfirm();
                      },
                      fontColor: Colors.white,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5,)
          ],
        ),
      ),
    );
  }
}
