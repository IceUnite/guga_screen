import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String assetIcon;

  const InfoWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.assetIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 8, top: 13, bottom: 14, right: 6),
        width: 160,
        height: 65,
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF).withOpacity(0.75),
            borderRadius: BorderRadius.circular(
              10,
            )),
        child: Row(
          children: [
            Column(
              children: [
                SizedBox(height: 18, child: Text(title, style: const TextStyle(color: Color(0xff373737), fontSize: 15, fontWeight: FontWeight.w400),)),
                SizedBox(height: 20, child: Text(subTitle, style: const TextStyle(color: Color(0xff090909), fontSize: 17, fontWeight: FontWeight.w400),)),
              ],
            ),
            SvgPicture.asset(assetIcon),

          ],
        ));
  }
}
