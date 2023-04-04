import 'package:flutter/material.dart';


class ShimmerListItemView extends StatelessWidget {
  const ShimmerListItemView({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(image,height: 80,width: 150,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Euronews",
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15),
                    child: Text(
                      "On politics with Lisa Loureniani: Warren’s growing crowds",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Row(
                    children:  [
                      Text(
                        "Politics",
                        style: TextStyle(color: Colors.black),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15),
                        child: CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.grey.shade100,
                        ),
                      ),
                      Text(
                        "3m ago",
                        style: TextStyle(color:Colors.grey.shade100),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}