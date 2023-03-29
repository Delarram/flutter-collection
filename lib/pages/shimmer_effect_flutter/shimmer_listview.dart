import 'package:flutter/material.dart';


class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 32), // for better visualization
            _isLoading
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : Expanded(
              child: ListView.separated(
                itemCount: 6,
                itemBuilder: (context, index) => Container(), separatorBuilder: (BuildContext context, int index) {
               return SizedBox(height: 8);
              }
              ),
            ),
          ],
        ),
      ),
    );
  }
}