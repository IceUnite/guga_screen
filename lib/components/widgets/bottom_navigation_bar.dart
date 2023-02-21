import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guga_screen/basket_page/basket_page_ui.dart';
import 'package:guga_screen/favourite_page/favourite_page_ui.dart';
import 'package:guga_screen/home_page/home_page_ui.dart';
import 'package:guga_screen/home_page/widgets/home_page_appbar.dart';



class NavBar extends StatefulWidget {
  NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBar();

}
class _NavBar extends State<NavBar> {
  final screens = [
    HomePage(),
    FavouritePage(),
    BasketPage(),
  ];
  @override
  int currentIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomePageAppBar('AppBar'),
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),

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
            // BottomNavigationBarItem(
            //   icon: currentIndex == 3
            //       ? SvgPicture.asset('assets/icons/navigation_active3.svg')
            //       : SvgPicture.asset('assets/icons/navigation3.svg'),
            //   label: 'home',
            // ),
          ],
          // currentIndex: _selectedIndex,
          // selectedItemColor: Colors.amber[800],
          // onTap: _onItemTapped,
        ),
      ),
    );
  }
}
//
// GlobalNavigationBar() {
//   int currentIndex = 3;
//   return Container(
//     clipBehavior: Clip.antiAlias,
//     decoration: const BoxDecoration(
//       color: Colors.black,
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(20),
//         topRight: Radius.circular(20),
//       ),
//     ),
//     child: BottomNavigationBar(
//       // iconSize: 100,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       type: BottomNavigationBarType.fixed,
//       currentIndex: currentIndex,
//       onTap: (index) {
//         currentIndex = index;
//         //print(currentIndex);
//       },
//
//       //TODO сделать навигацию и интерфейс
//       items: <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: currentIndex == 0
//               ? SvgPicture.asset('assets/icons/navigation_active0.svg')
//               : SvgPicture.asset('assets/icons/navigation0.svg'),
//           label: 'home',
//         ),
//         BottomNavigationBarItem(
//           icon: currentIndex == 1
//               ? SvgPicture.asset('assets/icons/navigation_active1.svg')
//               : SvgPicture.asset('assets/icons/navigation1.svg'),
//           label: 'home',
//         ),
//         BottomNavigationBarItem(
//           icon: currentIndex == 2
//               ? SvgPicture.asset('assets/icons/navigation_active2.svg')
//               : SvgPicture.asset('assets/icons/navigation2.svg'),
//           label: 'home',
//         ),
//         BottomNavigationBarItem(
//           icon: currentIndex == 3
//               ? SvgPicture.asset('assets/icons/navigation_active3.svg')
//               : SvgPicture.asset('assets/icons/navigation3.svg'),
//           label: 'home',
//         ),
//       ],
//       // currentIndex: _selectedIndex,
//       // selectedItemColor: Colors.amber[800],
//       // onTap: _onItemTapped,
//     ),
//   );
// }
