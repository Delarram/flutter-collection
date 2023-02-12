import 'package:flutter/material.dart';
import '../../widget/widget.dart';
import 'account_category_listvo.dart';

class ProfileBodySection extends StatelessWidget {
  final String? text;
  final List<AccountCategoryListV0> itemList;
  const ProfileBodySection({
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
                  Container(
                    height: 30,width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white70,
                    ),
                    child:Icon(itemList[index].icon,color: Colors.black,),
                  ),
                  SizedBox(width: 10,),
                  CustomTextView(text: itemList[index].title,fontSize: 13),
                  const Spacer(),
                  IconButton(onPressed: (){
                  }, icon:const Icon(Icons.arrow_forward_ios,size:18))
                ],
              ),
            ),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
          height: 4,
      );
    },
    );
  }
}