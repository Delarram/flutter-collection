import 'package:flutter/material.dart';

import '../../widget/widget.dart';
import 'account_category_listvo.dart';



class SettingWidget extends StatelessWidget {
  final String? text;
  final List<AccountCategoryListV0> itemList;
  const SettingWidget({
    Key? key, required this.itemList, this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            itemList[index].onPress(context);
          },
          child: Card(color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 3),
              child: Row(
                children: [
                  ImageIcon(AssetImage(itemList[index].image),color: Colors.black,size: 20,
                  ),SizedBox(width: 10,),
                  CustomTextView(text: itemList[index].title,fontSize: 13),
                  const Spacer(),
                  IconButton(onPressed: () {
                  }, icon: Icon(Icons.arrow_forward_ios,size: 18,))
                ],
              ),
            ),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
          height: 4
      );
    },
    );
  }
}