import 'package:flutter/cupertino.dart';
import 'package:fluttercollection/pages/shimmer_effect_flutter/skeleton.dart';

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Skeleton(height: 120, width: 120),
        SizedBox(width: 8,),
        Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Skeleton(width: 80,),
            SizedBox(height: 8,),
            Skeleton(height: 20,),
            SizedBox(height: 8,),
            Skeleton(height: 20,),
            SizedBox(height: 8,),
            Row(
              children: [
                Expanded(child: Skeleton(height: 20,width: 120,)),
                SizedBox(width: 8,),
                Expanded(child: Skeleton(height: 20,width: 120,))
              ],
            )
          ],
        )
      ],
    );
  }
}
