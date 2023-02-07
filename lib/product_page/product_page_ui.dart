import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'constants.dart';
import 'manager.dart';

class ProductPage extends ConsumerStatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {

  int sale = 0;
  int salecount = 0;
  int finalsale = 0;

  @override
  Widget build(BuildContext context) {

    final manager = ref.watch(productManagerProvider);

    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 62,
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: (screenWidth - 258) / 2 - 48),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                  const SizedBox(width: 3),
                  Image.asset('assets/images/hinc.png'),
                  //SizedBox(height: (screenWidth - 309)),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 30, right: 31),
              height: 839,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 37,
                  ),
                  const Text(
                    'Аварские  хинкали',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    'Состав: тесто, лук, черный перец, красный перец, укроп, кинза, мясо, сушенная зира, соль, репчатый лук',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'Соусы: сметана, кетчуп',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'Масса: 1 хинкали 80гр',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    'Упаковка: емкость из качественной пластмассы которая не вызывает аллергию, плотно закрывается и помщается в наш вирменный бумажный пакет',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Начинка',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          sale = teliatina;
                          setState(() {
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffF5F5F5))),
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                              child: Text(
                            'Телятина',
                            style: TextStyle(color: Colors.black),
                          )),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          sale = goviadina;
                          setState(() {
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffF5F5F5))),
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                              child: Text('Говядина',
                                  style: TextStyle(color: Colors.black))),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          sale = svinina;
                          setState(() {
                          });

                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffF5F5F5))),
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                              child: Text('Свинина',
                                  style: TextStyle(color: Colors.black))),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            salecount += 1;
                            setState(() {
                            });

                          },
                          child: const SizedBox(
                              width: 47,
                              height: 40,
                              child: Center(
                                  child: Text(
                                '+',
                                style: TextStyle(color: Colors.black),
                              )))),
                       SizedBox(
                        width: 47,
                        height: 40,
                        child: Center(child: Text(salecount.toString(), style: TextStyle(fontSize: 24),)),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            salecount -= 1;
                            setState(() {
                            });
                          },
                          style: ButtonStyle(
                              shadowColor:
                                  MaterialStateProperty.all(Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          child: const SizedBox(
                              width: 47,
                              height: 40,
                              child: Center(
                                  child: Text('-',
                                      style: TextStyle(color: Colors.black))))),
                      SizedBox(width: 50,),
                      Container(
                        child: Center(child: Text((salecount*sale).toString(), style: TextStyle(fontSize: 20),)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
