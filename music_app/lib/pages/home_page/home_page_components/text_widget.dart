import 'package:flutter/material.dart';
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical:0),
          height: 60,
          width: 260,
          child: Text(
            'Find the best music for your banger',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 22,
            ),
          ),
        ),
      ],
    );
  }
}