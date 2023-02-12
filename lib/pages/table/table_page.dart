import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercollection/pages/table/table_section.dart';

class TablePage extends StatelessWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Page"),

      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TableSection(onTapTable: (){})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
