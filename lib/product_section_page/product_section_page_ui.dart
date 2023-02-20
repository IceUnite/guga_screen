import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guga_screen/home_page/data/catalog_product_data.dart';
import 'package:guga_screen/home_page/manager.dart';
import 'package:guga_screen/product_section_page/widgets/info_widget.dart';
import 'package:guga_screen/product_section_page/widgets/product_widget.dart';

class ProductSectionPage extends ConsumerStatefulWidget {
  const ProductSectionPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProductSectionPage> createState() => _ProductSectionPageState();
}

List<List<bool>> isFavourite = [
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
];
List<List<bool>> isBasket = [
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
  List.filled(10000, false),
];

class _ProductSectionPageState extends ConsumerState<ProductSectionPage> {
  @override
  Widget build(BuildContext context) {
    final homeManager = ref.watch(homeManagerProvider);
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 320,
                  width: double.infinity,
                  child: Image.asset(
                    catalogProductData[
                            homeManager.homePageStateHolder.catalogIndex]
                        .assetIamge,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 46,
                  left: 31,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff9EFFFFFF).withOpacity(0.62),
                    ),
                    child: Center(
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 210,
                  left: 31,
                  child: InfoWidget(
                    title: 'Приготовление',
                    subTitle: '20-25 мин',
                    assetIcon: 'assets/icons/prigotovlenie.svg',
                  ),
                ),
                const Positioned(
                  top: 210,
                  left: 201,
                  child: InfoWidget(
                    title: 'Доставка',
                    subTitle: '20-30 мин',
                    assetIcon: 'assets/icons/dostavka.svg',
                  ),
                ),
                Positioned(
                    top: 305,
                    child: Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                      ),
                    ))
              ],
            ),
            Container(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (context, int index) {
                  return ProductWidget(
                    imageAsset: catalogProductData[
                            homeManager.homePageStateHolder.catalogIndex]
                        .assetIamge,
                    productName: catalogProductData[
                            homeManager.homePageStateHolder.catalogIndex]
                        .title,
                    index: index,
                    isFavourite: isFavourite,
                    isBasket: isBasket,
                  );
                },
              ),
            )
            // ListView.builder()
          ],
        ),
      ),
    );
  }
}
