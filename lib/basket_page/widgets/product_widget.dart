import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  String imageAsset;
  String productName;
  String productTitle;
  String price;

  ProductWidget(
    this.imageAsset,
    this.productName,
    this.productTitle,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 20, top: 15),
                    child: Image.asset(imageAsset)),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 130,
                        height: 40,
                        child: Text(
                          productName,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: 130,
                        height: 29,
                        child: Text(
                          productTitle,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff939393)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 130,
                        height: 29,
                        child: Text(
                          price,
                          maxLines: 2,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFF7A00)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 20,
                  child: Row(
                    children:  [
                      SizedBox(width: 30, child: IconButton(splashRadius: 14,onPressed: (){}, icon: Icon(Icons.restore_from_trash_outlined,))),
                      SizedBox(width: 30, child: IconButton(splashRadius: 14,onPressed: (){}, icon: Icon(Icons.favorite_border_outlined,))),
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 1,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
