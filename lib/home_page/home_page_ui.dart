import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:guga_screen/home_page/data/popular_food_data.dart';
import 'package:guga_screen/home_page/widgets/home_page_appbar.dart';
import 'package:guga_screen/home_page/widgets/popular_food.dart';
import 'package:guga_screen/home_page/widgets/promotion_widget.dart';
import 'package:guga_screen/profile_page/manager.dart';

import 'data/home_page_promotion_data.dart';
import 'manager.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final homeManager = ref.watch(homeManagerProvider);
    final manager = ref.watch(profileManagerProvider);
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: HomePageAppBar(manager.profilePageStateHolder.userAdress),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: const TextField()),
            ),
            const SizedBox(
              height: 27,
            ),
            Container(
              margin: const EdgeInsets.only(left: 31),
              child: const Text(
                'Акции',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              height: 95,
              margin: const EdgeInsets.only(left: 31),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: promotionData.length,
                itemBuilder: (context, int index) {
                  return PromotionWidget(
                    title: promotionData[index].title,
                    subTitle: promotionData[index].subTitle,
                    widgetColor: promotionData[index].widgetColor,
                    widgetSubColor: promotionData[index].widgetSubColor,
                  );
                },
              ),
            ),
            const SizedBox(height: 23,),
            Container(
              margin: const EdgeInsets.only(left: 13),
              child: const Text(
                "Популярные Блюда",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),),
            SizedBox(height: 12,),
            Container(
              width: double.infinity,
              height: 215,
              margin: const EdgeInsets.only(left: 13),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularFoodData.length,
                itemBuilder: (context, int index) {
                  return PopularFood(
                    imageAsset: popularFoodData[index].imageAsset,
                    title: popularFoodData[index].title,
                    price: popularFoodData[index].price,);
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
