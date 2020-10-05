import 'package:flutter/material.dart';

class RoomDetailCard extends StatelessWidget {
  const RoomDetailCard({
    Key key,
    this.iconCard,
    this.namber,
  }) : super(key: key);
  final IconData iconCard;
  final String namber;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconCard,
            color: Colors.grey,
            size: 35,
          ),
          Text(
            namber,
            style: TextStyle(color: Colors.grey[200], fontSize: 17),
          )
        ],
      ),
    );
  }
}
