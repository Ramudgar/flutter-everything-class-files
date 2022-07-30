import 'package:esoftwarica/screen/aboutus.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';

import 'addStudent.dart';
import 'home.dart';

class ButtonNavigation extends StatefulWidget {
  ButtonNavigation({Key? key}) : super(key: key);

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _selectedIndex = 0;

  List<Widget> lstWidget = [
    Home(),
    AddStudent(),
    AboutUs(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: lstWidget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Add Student'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'AboutUs'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        elevation: 10,
        onTap: (lstWidget) {
          setState(() {
            _selectedIndex = lstWidget;
          });
        },
      ),
    );
  }
}
