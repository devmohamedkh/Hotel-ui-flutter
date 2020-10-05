import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelhotel/models/hotels.dart';
import 'package:travelhotel/screens/hotel%20detals%20screen/hotel_detals.dart';

class HotelsCard extends StatelessWidget {
  const HotelsCard({
    Key key,
    this.hotel,
  }) : super(key: key);
  final Hotels hotel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => HotalDetals(
                      hotels: hotel,
                    )));
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(hotel.imgpath), fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  CupertinoIcons.heart_solid,
                  color: Colors.red,
                  size: 30,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hotel.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                '\$${hotel.price}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.redAccent,
                size: 15,
              ),
              Text(
                hotel.location,
                style: TextStyle(color: Colors.grey[530]),
              )
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
    );
  }
}

/*
class HotelsCard extends StatelessWidget {
  const HotelsCard({
    Key key,
    this.hotel,
  }) : super(key: key);

  final Hotels hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(hotel.imgpath), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hotel.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(
                '\$ ${hotel.price}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.redAccent,
                size: 15,
              ),
              Text(
                hotel.location,
                style: TextStyle(color: Colors.grey[530]),
              )
            ],
          )
        ],
      ),
    );
  }
}

*/
