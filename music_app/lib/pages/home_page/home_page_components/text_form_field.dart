import 'package:flutter/material.dart';
import 'package:music_app/styles/color.dart';
class TextFormFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff252525),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Search',
        hintStyle: TextStyle(
          fontSize: 14,
          color: TextColor.secondaryColor,
        ),
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
    Icons.search,
    color: TextColor.secondaryColor,
    size: 30,
          ),
        ),
      ),
    )
            ),
          ],
        ),
      ),
    );
  }
}
