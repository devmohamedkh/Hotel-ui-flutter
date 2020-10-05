import 'package:flutter/material.dart';

class Categores extends StatefulWidget {
  @override
  _CategoresState createState() => _CategoresState();
}

class _CategoresState extends State<Categores> {
  int selectedIndex = 0;
  List catagores = ['Nwe', 'Sale'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagores.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              height: 30,
              width: 70,
              decoration: BoxDecoration(
                color: index == selectedIndex ? Colors.black : Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  catagores[index],
                  style: TextStyle(
                      color: index == selectedIndex
                          ? Colors.white
                          : Colors.black38,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
