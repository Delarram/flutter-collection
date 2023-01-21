import 'package:flutter/material.dart';
import 'package:fluttercollection/pages/expandablelist/expandable_list.dart';

import '../../widget/widget.dart';


class LabTestDetailDoctorPage extends StatelessWidget {
  const LabTestDetailDoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: CustomTextView(text: "ExpandablePage",fontColor: Colors.white,fontWeight: FontWeight.w400,),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [Colors.teal.shade200, Colors.greenAccent.shade200])
          ),
          child: ExpandableListview()),
    );
  }
}
