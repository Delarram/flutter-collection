import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercollection/widget/widget.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';
import '../../bloc/bottom_nav_bloc.dart';
import 'bottom_navbar_view.dart';


class BottomNavRounded extends StatefulWidget {
  final int? index;
  final bool? isLogin;

  const BottomNavRounded({Key? key, this.isLogin = false, this.index = 1})
      : super(key: key);

  @override
  State<BottomNavRounded> createState() => _BottomNavRoundedState();
}

class _BottomNavRoundedState extends State<BottomNavRounded> {
  static late List<Widget> _widgetList;

  final List<Widget> page = const [
   Center(child: CustomTextView(text: "hello"),),
    Center(child: CustomTextView(text: "hello"),),
    Center(child: CustomTextView(text: "hello"),),
    Center(child: CustomTextView(text: "hello"),),
    Center(child: CustomTextView(text: "hello"),),
  ];



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BottomNavBloc>(
      create: (context) => BottomNavBloc(),
      child: Consumer<BottomNavBloc>(
        builder: (context, bloc, child) {
          return Scaffold(
            body: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: _widgetList[bloc.currentIndex],
                  ),
                  Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: BottomNavBarView(
                      index: bloc.currentIndex,
                      onClick: (index) {
                        bloc.onChangeIndex(index);
                      },
                      isLogin: widget.isLogin,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
