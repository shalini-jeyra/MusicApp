import 'dart:ui';

import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ClipRect(
          child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          width: 450.0,
          height: 1000.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  'Insomnia',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                
                ),
                subtitle: Wrap(children: [
                  Text('Valetudo Beats'),
                  Text('\$30')
                ],),
                trailing: Wrap(children: [
                  Icon(Icons.favorite_border_outlined),
                  Icon(Icons.merge_type)
                ],),
              ),
              Slider(
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                  onChanged: (double newValue) {
                    setState(() {
                      _value = newValue.round();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.download_outlined),
                  Icon(
                    Icons.skip_previous,
                    size: 30,
                  ),
                  Icon(
                    Icons.pause_circle_filled,
                    size: 50,
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 30,
                  ),
                  Icon(Icons.list)
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(120, 10, 120, 10),
                padding: EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(16.0),
                    )),
                child: Center(
                  child: Text(
                    '+ Add to cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
        ),
      )),
    );
  }
}
