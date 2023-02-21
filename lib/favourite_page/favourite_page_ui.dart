import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:guga_screen/basket_page/widgets/basket_page_app_bar.dart';
import 'package:guga_screen/basket_page/widgets/product_widget.dart';
import 'package:guga_screen/components/widgets/bottom_navigation_bar.dart';



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

List<productInfo> Info = <productInfo>[
  productInfo(
      'assets/images/image3.png',
      'Аварские хинкали',
      'тесто, лук репчатый, кинза, соль, сушенная зира,черный перец...',
      '50 р/шт'),
  productInfo('assets/images/image4.png', 'Кофе с молоком',
      'корица, кофеин, два кубика сахара, три ложки кофе...', '60 ₽'),
  productInfo('assets/images/image5.png', 'Зверовой соус',
      'помидоры черри, полевые помидоры, чеснок...', '20 р'),
  productInfo(
      'assets/images/image6.png',
      'Хинкали в соусе',
      'тесто, лук репчатый, кинза, соль, сушенная зира,черный перец...',
      '65 р/шт'),
  productInfo(
      'assets/images/image3.png',
      'Аварские хинкали',
      'тесто, лук репчатый, кинза, соль, сушенная зира,черный перец...',
      '50 р/шт'),
  productInfo('assets/images/image4.png', 'Кофе с молоком',
      'корица, кофеин, два кубика сахара, три ложки кофе...', '60 ₽'),
  productInfo('assets/images/image5.png', 'Зверовой соус',
      'помидоры черри, полевые помидоры, чеснок...', '20 р'),
  productInfo(
      'assets/images/image6.png',
      'Хинкали в соусе',
      'тесто, лук репчатый, кинза, соль, сушенная зира,черный перец...',
      '65 р/шт'),
];

List<bool> isFavourite = List.filled(10000, false);
List<bool> isTrash = List.filled(10000, false);

class FavouritePage extends ConsumerStatefulWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  ConsumerState<FavouritePage> createState() => _BasketPageState();
}

class _BasketPageState extends ConsumerState<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    // final manager = ref.watch(basketManagerProvider);
    // final basketPageState = ref.watch(basketPageStateProvider);
    return
      // Scaffold(
      // bottomNavigationBar: NavBar(),
      // backgroundColor: Colors.white,
      // appBar: BasketAppBar(),
      // body:
      SingleChildScrollView(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: Info.length,
          itemBuilder: (context, int index) {
            return ProductWidget(
              imageAsset: Info[index].imageAsset,
              productName: Info[index].productName,
              productTitle: Info[index].productTitle,
              price: Info[index].price,
              index: index,
              isFavourite: isFavourite,
              isTrash: isTrash,
            );
          },
        ),
      // ),
    );
  }
}
