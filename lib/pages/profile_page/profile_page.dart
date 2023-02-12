import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercollection/widget/widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: CustomTextView(
          text: "Profile",
          fontSize: 18,
          fontColor: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior:Clip.none ,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.teal.shade900,
                    Colors.teal.shade800,
                    Colors.teal.shade700,
                    Colors.teal.shade600,
                    Colors.teal.shade500,
                    Colors.teal.shade400,
                    Colors.teal.shade300,
                  ])),
                ),
                Positioned(
                  bottom: -30,
                  left: 10,
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(width: 3, color: Colors.white70)),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
