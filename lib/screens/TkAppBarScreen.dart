import 'package:flutter/material.dart';
import 'package:tk_apps/screens/HomeScreen.dart';

class TkAppBar extends StatefulWidget {
  @override
  _TkAppBarState createState() => new _TkAppBarState();
  }
  
  class _TkAppBarState extends State<TkAppBar> {
    int _bootomNavCurrentIndex = 0;
    List<Widget> _container = [
      new HomeScreen(),
    ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bootomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation()
    );
  }

  Widget _buildBottomNavigation(){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bootomNavCurrentIndex = index;
        });
      },
      currentIndex: _bootomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
            color: Colors.blue,
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: new Text(
            'Beranda',
          ),

        ),
      ],
    );
  }
}

