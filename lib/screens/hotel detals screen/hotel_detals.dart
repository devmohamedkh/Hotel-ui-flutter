import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelhotel/models/hotels.dart';

import 'widget/button_call_and_maill.dart';
import 'widget/factilites.dart';
import 'widget/room_detail_card.dart';

class HotalDetals extends StatelessWidget {
  final Hotels hotels;

  const HotalDetals({Key key, this.hotels}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      hotels.imgpath,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 30,
                      right: 10,
                      child: Icon(
                        CupertinoIcons.heart_solid,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4),
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${hotels.price}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              hotels.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ]),
                      SizedBox(height: 10),
                      Text(
                        hotels.location,
                        style: TextStyle(color: Colors.grey[530]),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Room Details',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RoomDetailCard(
                              iconCard: Icons.hotel, namber: '56.67'),
                          RoomDetailCard(
                              iconCard: Icons.add_comment, namber: '56.67'),
                          RoomDetailCard(
                              iconCard: Icons.room_service, namber: '56.67'),
                          RoomDetailCard(
                              iconCard: Icons.access_time, namber: '56.67'),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Factilites',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Factilites(title: 'CCTV'),
                          SizedBox(width: 120),
                          Factilites(title: 'playground'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Factilites(title: 'Launderette'),
                          SizedBox(width: 63),
                          Factilites(title: 'Fitness corner'),
                        ],
                      ),
                      SizedBox(height: 10),
                      Factilites(title: 'Swimming pool'),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          CallIcone(),
                          SizedBox(width: 30),
                          MailIcon()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /////////////////////
            ],
          ),
        ),
      ),
    );
  }
}
