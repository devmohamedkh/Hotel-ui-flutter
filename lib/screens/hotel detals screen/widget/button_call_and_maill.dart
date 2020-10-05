import 'package:flutter/material.dart';

class MailIcon extends StatelessWidget {
  const MailIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 70,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(10)),
      child: Icon(Icons.mail_outline, size: 40),
    );
  }
}

class CallIcone extends StatelessWidget {
  const CallIcone({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.call,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 5),
          InkWell(
            onTap: () {},
            child: Text(
              'Call',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
