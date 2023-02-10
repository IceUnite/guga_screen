import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:guga_screen/basket_page/models/basket_page_state.dart';

import '../manager.dart';

class ProductWidget extends ConsumerStatefulWidget {
  String imageAsset;
  String productName;
  String productTitle;
  String price;
  int index;
  List<bool> isFavourite;
  List<bool> isTrash;

  ProductWidget({
    required this.imageAsset,
    required this.productName,
    required this.productTitle,
    required this.price,
    required this.index,
    required this.isFavourite,
    required this.isTrash
  });

  @override
  ConsumerState<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends ConsumerState<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    //print(widget.index);
    final manager = ref.watch(basketManagerProvider);
    final basketPageState = ref.watch(basketPageStateProvider);
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
                    child: Image.asset(widget.imageAsset)),
                Container(
                  margin: const EdgeInsets.only(top: 15, bottom: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 130,
                        height: 40,
                        child: Text(
                          widget.productName,
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
                          widget.productTitle,
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
                          widget.price,
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
                    children: [
                      SizedBox(
                          width: 30,
                          child: IconButton(
                              splashRadius: 14,
                              onPressed: () {
                                widget.isFavourite = manager.favouriteChangeState(widget.isFavourite, widget.index);
                              },
                              icon: Icon(Icons.favorite_border_outlined,
                                  color: basketPageState.isFavourite[widget.index] == true
                                      ? Colors.red
                                      : Colors.black))),
                      SizedBox(
                          width: 30,
                          child: IconButton(
                              splashRadius: 14,
                              onPressed: () {
                                widget.isTrash = manager.trashChangeState(widget.isTrash, widget.index);
                              },
                              icon:  Icon(
                                Icons.restore_from_trash_outlined,
                                  color: basketPageState.isTrash[widget.index] == true
                                      ? Colors.red
                                      : Colors.black
                              ))),
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
