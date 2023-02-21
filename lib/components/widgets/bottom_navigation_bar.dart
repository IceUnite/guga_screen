import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

GlobalNavigationBar() {
  int currentIndex = 3;
  return Container(
    clipBehavior: Clip.antiAlias,
    decoration: const BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: BottomNavigationBar(
      // iconSize: 100,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      // onTap: (index) => setState(()=> currentIndex = index),

      //TODO сделать навигацию и интерфейс
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? SvgPicture.asset('assets/icons/navigation_active0.svg')
              : SvgPicture.asset('assets/icons/navigation0.svg'),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? SvgPicture.asset('assets/icons/navigation_active1.svg')
              : SvgPicture.asset('assets/icons/navigation1.svg'),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
              ? SvgPicture.asset('assets/icons/navigation_active2.svg')
              : SvgPicture.asset('assets/icons/navigation2.svg'),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 3
              ? SvgPicture.asset('assets/icons/navigation_active3.svg')
              : SvgPicture.asset('assets/icons/navigation3.svg'),
           label: 'home',
        ),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      // onTap: _onItemTapped,
    ),
  );
}
