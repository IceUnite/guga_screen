import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

GlobalNavigationBar() {
  int selectedpage = 0;
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
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: selectedpage,
      //TODO сделать навигацию и интерфейс
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: selectedpage == 0
              ? SvgPicture.asset('assets/icons/navigation_active0.svg')
              : SvgPicture.asset('assets/icons/navigation0.svg'),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: selectedpage == 1
              ? SvgPicture.asset('assets/icons/navigation_active1.svg')
              : SvgPicture.asset('assets/icons/navigation1.svg'),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: selectedpage == 2
              ? SvgPicture.asset('assets/icons/navigation_active2.svg')
              : SvgPicture.asset('assets/icons/navigation2.svg'),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: selectedpage == 3
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
