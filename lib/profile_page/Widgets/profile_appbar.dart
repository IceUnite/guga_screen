import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guga_screen/profile_page/manager.dart';

ProfileAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffFFFFFF),
    title: Text(
      "Профиль",
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
      IconButton(
        splashRadius: 16,
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/Profile.svg',
          width: 23,
          height: 23,
        ),
      )
    ],
  );
}
