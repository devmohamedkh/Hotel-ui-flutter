import 'package:flutter/material.dart';
import 'package:travelhotel/models/hotels.dart';
import 'package:travelhotel/screens/home%20screen/widget/categores_list.dart';
import 'widget/hotel_card.dart';
import 'widget/searsh_box.dart';
import 'widget/titel_with_photo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.menu,
              size: 35,
            ),
            SizedBox(height: 10),
            //  text with photo
            TitelaAndPhoto(),
            SizedBox(height: 25),
            SearshBox(),
            SizedBox(height: 25),
            Categores(),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                height: 200,
                child: ListView.builder(
                  itemCount: hotel.length,
                  itemBuilder: (context, index) {
                    return HotelsCard(
                      hotel: hotel[index],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
