import 'package:flutter/material.dart';

class ProfileAchievment extends StatelessWidget {
  final int number;

  const ProfileAchievment({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (number) {
      case 1:
        return Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          padding: const EdgeInsets.only(top: 21, left: 21),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                colors: [
                  Color(0xff04B600),
                  Color(0xff00C013),
                ],
              ),
              borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                  height: 17.46,
                  child: Text(
                    "Новичок",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 15.6,
                  child: Text(
                    "Сделанно менее 10 покупок",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
            ],
          ),
        );
      case 2:
        return Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          padding: const EdgeInsets.only(top: 21, left: 21),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                colors: [
                  Color(0xff6100FF),
                  Color(0xff497CFF),
                ],
              ),
              borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                  height: 18,
                  child: Text(
                    "Постоянный покупатель",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 15.6,
                  child: Text(
                    "Сделанно 20-50 покупок",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
            ],
          ),
        );
      case 3:
        return Container(
          margin: const EdgeInsets.only(left: 30, right: 30),
          padding: const EdgeInsets.only(top: 21, left: 21),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                colors: [
                  Color(0xffFF5C00),
                  Color(0xffFF4949),
                ],
              ),
               borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                  child: Text(
                    "Супер покупатель",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 15.6,
                  child: Text(
                    "Сделанно более 50 покупок",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )),
            ],
          ),
        );
      default:
        return Container(child: Text('Передайте 1 2 или 3'),);
    }
  }
}
