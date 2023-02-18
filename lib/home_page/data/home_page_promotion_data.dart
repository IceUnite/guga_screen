import 'package:flutter/material.dart';

class PromotionData {
  String title;
  String subTitle;
  Color widgetColor;
  Color widgetSubColor;

  PromotionData(
      this.title,
      this.subTitle,
      this.widgetColor,
      this.widgetSubColor,);

}
List<PromotionData> promotionData = <PromotionData>[
  PromotionData('Пиццатая акция', '4+1', Color(0xffFF8D23), Color(0xffFF7A00)),
  PromotionData('Кофейная акция', '1+1', Color(0xff680404), Color(0xff8F0202)),
  PromotionData('Дождь из хачапури', '5+1', Color(0xff0079D0), Color(0xff006CBB)),
  PromotionData('Пиццатая акция', '4+1', Color(0xffB60000), Color(0xff7B0000)),
];
