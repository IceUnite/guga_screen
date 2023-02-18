import 'package:flutter/material.dart';

class PopularFoodData {
  String imageAsset;
  String title;
  String price;


  PopularFoodData(
      this.imageAsset,
      this.title,
      this.price,);

}
List<PopularFoodData> popularFoodData = <PopularFoodData>[
  PopularFoodData('assets/images/Pizza.png', 'Грибная Пицца', '120 ₽'),
  PopularFoodData('assets/images/Lepeshka.png', 'Тандырная лепешка', '80 ₽'),
  PopularFoodData('assets/images/Pizza.png', 'Грибная Пицца', '120 ₽'),
  PopularFoodData('assets/images/Lepeshka.png', 'Тандырная лепешка', '80 ₽'),
  PopularFoodData('assets/images/Pizza.png', 'Грибная Пицца', '120 ₽'),
  PopularFoodData('assets/images/Lepeshka.png', 'Тандырная лепешка', '80 ₽'),
  PopularFoodData('assets/images/Pizza.png', 'Грибная Пицца', '120 ₽'),
  PopularFoodData('assets/images/Lepeshka.png', 'Тандырная лепешка', '80 ₽'),



];
