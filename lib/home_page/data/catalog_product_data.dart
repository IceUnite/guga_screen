import 'package:flutter/material.dart';

class catalogProduct {
  String assetIamge;
  String title;
  String subTitle;

  catalogProduct(
      this.assetIamge,
      this.title,
      this.subTitle,
      );

}
List<catalogProduct> catalogProductData = <catalogProduct>[
  catalogProduct('assets/images/catalog1.png', 'Хинкали', 'Все виды хинкали на любой вкус'),
  catalogProduct('assets/images/catalog2.png', 'Пицца', 'Тончайшая пицца, на любой вкус'),
  catalogProduct('assets/images/catalog3.png', 'Лаваш', 'Сочный и диетический лаваш'),
  catalogProduct('assets/images/catalog4.png', 'Хачапури', 'Сытные и вкусные хачапури'),
  catalogProduct('assets/images/catalog5.png', 'Булочки', 'Тающие во рту булочки'),
  catalogProduct('assets/images/catalog6.png', 'Самса', 'Мясная и хрустящая самса, из тандыра'),
  catalogProduct('assets/images/catalog7.png', 'Хлеб', 'Попробовав, вернетесь в детство'),
  catalogProduct('assets/images/catalog8.png', 'Еда для бизнеса', 'Накормите своих сотрудников'),

];
