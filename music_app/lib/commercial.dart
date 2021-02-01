import 'package:flutter/material.dart';
class Commercial extends StatefulWidget {
  @override
  _CommercialState createState() => _CommercialState();
}

class _CommercialState extends State<Commercial> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Container(decoration:BoxDecoration(shape: BoxShape.circle,color: Colors.white60,border: Border.all(width: 5.0, color: Colors.white),))
        ],)
      ],
      
    );
  }
}