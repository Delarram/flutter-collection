import 'package:flutter/material.dart';
import 'package:fluttercollection/pages/tabpage/tab_view.dart';

class TabPage extends StatelessWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Page"),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            SizedBox(height: 5
              ,),
            Container(
              margin:const EdgeInsets.only(left: 10, right: 10, top: 10),
              constraints:const BoxConstraints(maxHeight: 150.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 0.1,
                    offset: Offset(0, 0), // Shadow position
                  ),
                ],
              ),
              child: const Material(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
                color: Colors.white70,
                child: TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    color: Color(0xFF00af50),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Text("tab 1")
                    ),
                    Tab(
                      child:Text("tab2")
                    ),
                    Tab(child:
                   Text("Tab3")
                    ),
                    Tab(
                      child: Text("Tab4")
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: TabBarView(
                children: [
               TabView()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
