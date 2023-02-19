import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularFood extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String price;
  const PopularFood({Key? key, required this.imageAsset,required this.title, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 142,
      height: 215,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 114,
            height: 112,
            child: Center(child: Image.asset(imageAsset)),
          ),
          const SizedBox(
            height: 15,
          ),
           Center(
            child: SizedBox(
                width: 100,
                height: 44,
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
           Center(
            child: Text(
              price,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffFF7A00)),
            ),
          )
        ],
      ),
    );
  }
}
