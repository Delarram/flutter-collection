import 'package:flutter/material.dart';
import 'package:fluttercollection/pages/profile_page/profile_page.dart';
import 'package:fluttercollection/pages/table/table_page.dart';
import 'package:fluttercollection/pages/tabpage/tab_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ProfilePage()
    );
  }
}

