import 'package:flutter/material.dart';

import 'package:music_app/NavigatorPage.dart';
import 'package:music_app/ProfilePage.dart';
import 'package:music_app/homepage.dart';
import 'package:music_app/music.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    NavigatorPage(),
    MusicPage(),
    ProfilePage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      bottomNavigationBar: Container(
        height: 100,
        width:500,
        color:Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
             borderRadius: BorderRadius.all(
               Radius.circular(16)
    ), 
            child: BottomNavigationBar(
              
              backgroundColor: Colors.black,
              currentIndex: _selectedIndex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xffF8943D),
              items: [
                BottomNavigationBarItem(            
                    icon: Icon(
                      Icons.home_outlined,
                      size: 30.0,
                      color: Colors.white60,
                    ),
                    label: 'Home',),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.navigation,
                      size: 24.0,
                      color: Colors.white60,
                    ),
                    label: 'Navigator'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.chat_outlined,
                      size: 24.0,
                      color: Colors.white60,
                    ),
                    label: 'Chat'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                      size: 24.0,
                      color: Colors.white60,                
                    ),
                    
                    label: 'Profile')
              ],
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              
            ),
          ),
        ),
        
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      
      
    );
  }
}
