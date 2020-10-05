import 'package:flutter/material.dart';

class TitelaAndPhoto extends StatelessWidget {
  const TitelaAndPhoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'DISCOVER',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
              height: 60,
              width: 60,
              child: Image.asset(
                'assets/images/pexels-photo-736716.webp',
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
