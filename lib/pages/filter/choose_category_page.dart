import 'package:flutter/material.dart';

import '../../resources/color_constant.dart';
import '../../widget/widget.dart';

class ChooseCategoryPage extends StatelessWidget {
  const ChooseCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cPrimaryThree,
        title: CustomTextView(
          text: "Choose Category",
          fontColor: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
