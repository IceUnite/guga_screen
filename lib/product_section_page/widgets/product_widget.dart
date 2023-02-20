import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:guga_screen/home_page/manager.dart';
import 'package:guga_screen/product_section_page/manager.dart';
import 'package:guga_screen/product_section_page/models/product_section_page_state.dart';
class ProductWidget extends ConsumerStatefulWidget {
  final String imageAsset;
  final String productName;
  final String productTitle = 'тесто, лук репчатый, кинза, соль, сушенная зира,черный перец...';
  final String price = '100 рублей';
  final int index;
  List<List<bool>> isFavourite;
  List<List<bool>> isBasket;

  ProductWidget({
    required this.imageAsset,
    required this.productName,
    // required this.productTitle,
    //required this.price,
    required this.index,
    required this.isFavourite,
    required this.isBasket,
  });

  @override
  ConsumerState<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends ConsumerState<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    final homeManager = ref.watch(homeManagerProvider);
    final manager = ref.watch(productSectionManagerProvider);
    final productSectionPageState = ref.watch(productSectionPageStateProvider);
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
                Container(
                  width: 138,
                    height: 115,
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
                                widget.isFavourite = manager.favouriteChangeState(widget.isFavourite,homeManager.homePageStateHolder.catalogIndex, widget.index);
                                print(productSectionPageState.isFavourite[homeManager.homePageStateHolder.catalogIndex][widget.index]);
                                print(1);
                              },
                              icon: Icon(Icons.favorite_border_outlined,
                                  color: productSectionPageState.isFavourite[homeManager.homePageStateHolder.catalogIndex][widget.index] == true
                                      ? Colors.red
                                      : Colors.black))),
                      SizedBox(
                          width: 30,
                          child: IconButton(
                              splashRadius: 14,
                              onPressed: () {
                                widget.isBasket = manager.basketChangeState(widget.isBasket,homeManager.homePageStateHolder.catalogIndex, widget.index);
                              },
                              icon:  Icon(
                                  Icons.shopping_basket_outlined,
                                  color: productSectionPageState.isBasket[productSectionPageState.selectedIndex][widget.index] == true
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
