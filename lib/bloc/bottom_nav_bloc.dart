import 'package:flutter/material.dart';


class BottomNavBloc extends ChangeNotifier{

  int currentIndex=1;

  bool isLogin = false;

  BottomNavPageBloc(){
  }

  onChangeIndex(int index){
    if( isLogin == true){
      currentIndex= index++;
    }else{
      currentIndex = index;
    }
    notifyListeners();
  }

}