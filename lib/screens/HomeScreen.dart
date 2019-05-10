import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.home),
        title: Text('Teman Kencan'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Icon(Icons.notification_important),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Icon(Icons.message),
          ),
        ],
      ),

      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        children: <Widget>[
          Container(
            color: Colors.yellowAccent,
            child: Center(
              child: Text("1", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text("2", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          Container(
            color: Colors.brown,
            child: Center(
              child: Text("3", style: TextStyle(fontSize: 24.0),),
            ),
          ),
          
        ],
        
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.lightBlue,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text("Home")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            title: Text("Filter")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            title: Text("Chatting")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
              color: Colors.white,
            ),
            title: Text("Agent")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            
            title: Text("Account")),
      ]),
    );
  }
}
