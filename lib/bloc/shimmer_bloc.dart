import 'package:flutter/cupertino.dart';

class ShimmerBloc extends ChangeNotifier{
   bool isLoading = false;


   void setShimmerEffect(){
     isLoading = true ;
     Future.delayed(Duration(seconds: 2),(){
       isLoading = false;
     });
   }
   

}