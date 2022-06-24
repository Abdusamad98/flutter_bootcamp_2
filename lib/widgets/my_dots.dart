import 'package:flutter/material.dart';

class MyDots extends StatelessWidget {
  const MyDots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 12,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(
          width: 4,
        ),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(5)),
        ),
        SizedBox(
          width: 4,
        ),
        Container(
          width: 5,
          height: 5,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(5)),
        )
      ],
    );
  }
}
