
import 'package:flutter/material.dart';

import '../../resources/color_constant.dart';
import '../../widget/widget.dart';



class LabTestDetail extends StatelessWidget {
  const LabTestDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15,
      ),
      child: Column(children: [
        SizedBox(height: 15,),
        Align(
            alignment: Alignment.topRight,
            child: CustomTextView(text: " Hemoglobin & Blood Disorder",fontWeight: FontWeight.w600,)),
        SizedBox(height: 10,),
        Flexible(
          child: ListView.separated(
            itemCount: 13,
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: 15,),
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 5,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 0.5,
                        offset: Offset(0.5, 0.5), // Shadow position
                      ),
                    ],
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ColorScheme.light(
                        primary: Colors.teal,
                      ),
                    ),
                    child: ExpansionTile(
                      title: CustomTextView(text: "Car Detail ",),
                      children: [
                        Divider(height: 1,color: cBackGroundFour,thickness: 2),
                        ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: CustomTextView(text: "There are many Section",fontColor: cBackGroundTwo,),
                          ),
                          leading: CustomTextView(text: "Car Guide:",fontColor: cPrimaryTeal,),
                        ),
                        ListTile(
                          title: CustomTextView(text: "1 day",fontColor: cBackGroundTwo,),
                          leading: CustomTextView(text: "Days",fontColor: cPrimaryTeal,),
                        ),
                        ListTile(
                          title: CustomTextView(text: "31000",fontColor: cBackGroundTwo,),
                          leading: CustomTextView(text: "Price:",fontColor: cPrimaryTeal,),
                        ),
                      ],
                    ),
                  )
              );
            },
          ),
        )
      ],),
    );
  }
}
