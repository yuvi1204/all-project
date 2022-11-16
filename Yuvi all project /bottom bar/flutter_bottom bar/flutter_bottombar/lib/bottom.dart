


import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bottombar/bottom.dart';
import 'package:flutter_bottombar/friend/friend.dart';
import 'package:flutter_bottombar/home/home.dart';
import 'package:flutter_bottombar/location/location.dart';

class MyBottom extends StatefulWidget {
  const MyBottom({Key? key}) : super(key: key);

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
    int _selectedIndex = 0;
    String _colorName = 'No';
  Color _color = Colors.black;

     final List Screen=[
    MyHome(),
    MyLocation(),
    Myfriend()

   ];
  /*static const List<Widget> _options = <Widget>[
    Text('Home Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Settings Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];*/
 /* void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BottomNavigationBar by Mehul.'),
          backgroundColor: Colors.teal
      ),
      body:CircularMenu(
          alignment: Alignment.bottomCenter,
          backgroundWidget: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                    text: _colorName,
                    style:
                        TextStyle(color: _color, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' Wlecome.'),
                ],
              ),
            ),
          ),
          toggleButtonColor: Colors.pink,
          items: [
            CircularMenuItem(
                icon: Icons.search,
                color: Colors.green,
                onTap: () {
                  setState(() {
                    _color = Colors.green;
                    _colorName = 'Green';
                  });
                }),
            CircularMenuItem(
                icon: Icons.home,
                color: Colors.blue,
                onTap: () {
                  setState(() {
                    MyHome();
                  });
                }),
            CircularMenuItem(
                icon: Icons.people,
                color: Colors.orange,
                onTap: () {
                  setState(() {
                   Myfriend();
                  });
                }),
            CircularMenuItem(
                icon: Icons.location_on,
                color: Colors.purple,
                onTap: () {
                  setState(() {
                    MyLocation();
                  });
                }),
            CircularMenuItem(
                icon: Icons.notifications,
                color: Colors.brown,
                onTap: () {
                  setState(() {
                    _color = Colors.brown;
                    _colorName = 'Brown';
                  });
                })
          ],
        )
      );/* Screen[ _selectedIndex],
     //   child: _options.elementAt(_selectedIndex),
    
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.teal
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'Location',
                backgroundColor: Colors.cyan
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Friend',
              backgroundColor: Colors.lightBlue,
            ),
          ],*/
          //type: BottomNavigationBarType.shifting,
         // currentIndex: _selectedIndex,
          //selectedItemColor: Colors.white,
          //unselectedItemColor: Colors.grey,
         // iconSize: 40,
        //  onTap: _onItemTap,
         // elevation: 5
      
    
  }
}

 
    