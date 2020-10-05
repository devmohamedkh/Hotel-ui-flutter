import 'package:flutter/material.dart';

class SearshBox extends StatelessWidget {
  const SearshBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Search',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
