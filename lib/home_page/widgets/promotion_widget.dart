import 'dart:math';

import 'package:flutter/material.dart';

class PromotionWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color widgetColor;
  final Color widgetSubColor;

  const PromotionWidget(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.widgetColor,
      required this.widgetSubColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95, height: 95,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: widgetColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Positioned(
            left: 7,
            right: 9,
            top: 10,
            child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: widgetSubColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(
                  10,
                ),
              ),
            ),
            child: Transform.rotate(angle: -pi/6,child: Center(child: Text(subTitle, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),))),
          ),
        ],
      ),
    );
  }
}
