import 'package:flutter/material.dart';
import 'package:fluttercollection/bloc/shimmer_bloc.dart';
import 'package:fluttercollection/pages/shimmer_effect_flutter/shimmer_effect.dart';
import 'package:fluttercollection/pages/shimmer_effect_flutter/shimmer_list_itemview.dart';
import 'package:provider/provider.dart';

class ShimmerListView extends StatelessWidget {
  const ShimmerListView({Key? key}) : super(key: key);

  // late bool _isLoading;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShimmerBloc(),
      child: Consumer<ShimmerBloc>(
        builder: (context, bloc, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                "Shimmer effect",
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const SizedBox(height: 32), // for better visualization
                    // _isLoading
                    //     ? const Center(
                    //   child: CircularProgressIndicator(),
                    // )
                    //  :
                    bloc.isLoading
                        ? Center(
                            child: ListView.separated(
                                itemBuilder: (context, index) =>
                                    ShimmerEffect(),
                                separatorBuilder: (context, index) => SizedBox(
                                      width: 16,
                                    ),
                                itemCount: 6),
                          )
                        : ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (context, index) =>
                                const ShimmerListItemView(
                                  image:
                                      'https://st1.bollywoodlife.com/wp-content/uploads/2020/12/Katrina-Kaif6.jpg',
                                ),
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(height: 8);
                            }),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
