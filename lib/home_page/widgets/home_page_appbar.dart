import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../manager.dart';

HomePageAppBar(String adress) {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffFFFFFF),
    title: Text(
      adress,
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    leading: Consumer(
      builder: ((context, ref, child) {
        final homeManager = ref.watch(homeManagerProvider);
        return IconButton(
          splashRadius: 16,
          icon: SvgPicture.asset(
            'assets/icons/Group.svg',
            width: 20,
            height: 20,
          ),
          onPressed: () {
            //TODO Доделать функционал кнопки
          },
        );
      }),
    ),
    actions: <Widget>[
      Consumer(
        builder: ((context, ref, child) {
          final homeManager = ref.watch(homeManagerProvider);
          return IconButton(
            splashRadius: 16,
            icon: SvgPicture.asset(
              'assets/icons/Profile.svg',
              width: 23,
              height: 23,
            ),
            onPressed: () {
              homeManager.openProfilePage();
            },
          );
        }),
      ),
    ],
  );
}
