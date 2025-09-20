import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/notifications_screen.dart';
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart';

import 'home_screen.dart';

class ButtomnavScreen extends StatefulWidget {
  const ButtomnavScreen({super.key});

  @override
  State<ButtomnavScreen> createState() => _ButtomnavScreenState();
}

class _ButtomnavScreenState extends State<ButtomnavScreen> {

  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Index 2: add post', style: optionStyle),
      ],
    ),
    NotificationsScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Image.asset("assets/images/home_icon.png",height: 30,width: 30), label: '',activeIcon: Image.asset("assets/images/home_filled_icon.png",height: 30,width: 30)),
           BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.black), label: ''),
          BottomNavigationBarItem(icon: Image.asset("assets/images/nav_add_icon.png",height: 30,width: 30), label: ''),
           BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart,color: Colors.black), label: '',activeIcon: Icon(CupertinoIcons.heart_fill,color: Colors.black,)),

          BottomNavigationBarItem(icon: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.network(
              "https://images.unsplash.com/photo-1756408263381-ed1488d9b1ea?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ), label: ''),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),);
  }
}
