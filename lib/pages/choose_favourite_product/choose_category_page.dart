import 'package:flutter/material.dart';
import 'package:fluttercollection/bloc/filter_bloc.dart';
import 'package:provider/provider.dart';

import '../../resources/color_constant.dart';
import '../../widget/custom_textfield.dart';
import '../../widget/widget.dart';

class ChooseCategoryPage extends StatelessWidget {
  const ChooseCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FilterBloc>(
      create: (BuildContext context) => FilterBloc(),
      child: Consumer<FilterBloc>(builder: (context, bloc, child) {
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
                Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal: BorderSide(color: Colors.black26))),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: cBackGroundFive),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.search_outlined,
                                color: cPrimaryThree,
                              ),
                              Expanded(
                                child: CustomTextField(
                                  isSearch: true,
                                  hintText: "Search Tests",
                                  fillColor: cBackGroundFive,
                                  onChange: (value) {
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                          },
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 10, right: 10),
                            child: Icon(
                              bloc.isPress
                                  ? Icons.filter_alt_outlined
                                  : Icons.filter_list_alt,
                              color: bloc.isPress
                                  ? cBackGroundTwo
                                  : cPrimaryThree,
                              size: bloc.isPress ? 30 : 35,
                            ),
                          )
                      )
                    ],
                  ),

                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                    child: CustomTextView(
                      text: "Chosen Tests",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );


  }
}
