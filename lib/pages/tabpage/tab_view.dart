import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.black26),
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: RichText(
        text: TextSpan(
          text: 'Hello I M Here',
          style: TextStyle(
              height: 1.5,
              fontSize: 14, color: Colors.black
          ),
          children: <TextSpan>[
            TextSpan(
                text: ' delarramPoudel@gmail.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    height: 1.5,
                    color: Colors.cyan)),
            TextSpan(
                text: ' or ',
                style: TextStyle(
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.cyan)),
            TextSpan(
              text: '091234567890',
              style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.cyan),
            ),
          ],
        ),
      ),
    );
  }
}
