import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:guga_screen/basket_page/widgets/product_widget.dart';

import 'manager.dart';

class productInfo {
  String imageAsset;
  String productName;
  String productTitle;
  String price;

  productInfo(
      this.imageAsset,
      this.productName,
      this.productTitle,
      this.price,
      );
}
List <productInfo> Info = <productInfo>[
  productInfo('assets/images/image3.png', 'Аварские хинкали', 'тесто, лук репчатый, кинза, соль, сушенная зира,черный перец...', '50 р/шт'),
];

class BasketPage extends ConsumerStatefulWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  ConsumerState<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends ConsumerState<BasketPage> {
  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(basketManagerProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProductWidget(Info[0].imageAsset, Info[0].productName, Info[0].productTitle, Info[0].price),
            ProductWidget(Info[0].imageAsset, Info[0].productName, Info[0].productTitle, Info[0].price),
            ProductWidget(Info[0].imageAsset, Info[0].productName, Info[0].productTitle, Info[0].price),
          ],
        ),
      ),
    );
  }
}
