import 'package:flutter/cupertino.dart';

class FilterBloc extends ChangeNotifier{
bool isPress = true;

void onChangePress(){
  isPress =! isPress;
  notifyListeners();
}


}