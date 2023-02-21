import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:guga_screen/favourite_page/manager.dart';



BasketAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: const Color(0xffFFFFFF),
    title: const Text(
      "Избранное",
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    leading: Consumer(
      builder: ((context, ref, child) {
        return IconButton(
          splashRadius: 16,
          icon: SvgPicture.asset(
            'assets/icons/arrow.svg',
            width: 20,
            height: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        );
      }),
    ),
    actions: <Widget>[
      Consumer(builder: ((context, ref, child) {
        final homeManager = ref.watch(favouriteManagerProvider);
        return IconButton(
          splashRadius: 16,
          onPressed: () {
            homeManager.openProfilePage();
          },
          icon: SvgPicture.asset(
            'assets/icons/Profile.svg',
            width: 23,
            height: 23,
          ),
        );
      }))
    ],
  );
}
