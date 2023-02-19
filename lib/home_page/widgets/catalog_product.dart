import 'package:flutter/material.dart';

class CatalogProduct extends StatelessWidget {
  final String assetImage;
  final String title;
  final String subTitle;

  const CatalogProduct(
      {Key? key,
      required this.assetImage,
      required this.title,
      required this.subTitle,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 31, right:31, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(assetImage, fit: BoxFit.fill,),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 19,
            ),
          ),
          Text(
            subTitle,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Color(0xff373737),
            ),
          ),
        ],
      ),
    );
  }
}
