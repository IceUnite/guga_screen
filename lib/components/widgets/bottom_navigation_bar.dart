import 'package:flutter/material.dart';

GlobalNavigationBar() {
  return BottomNavigationBar(
    //TODO сделать навигацию и интерфейс
    items:  const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'School',
      ),

    ],
    // currentIndex: _selectedIndex,
    selectedItemColor: Colors.amber[800],
    // onTap: _onItemTapped,
  );
}
