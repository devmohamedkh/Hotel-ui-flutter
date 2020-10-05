import 'package:flutter/material.dart';

class Factilites extends StatelessWidget {
  const Factilites({
    Key key,
    this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration:
              BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        ),
        SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
