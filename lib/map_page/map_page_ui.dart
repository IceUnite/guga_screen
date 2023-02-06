import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../code_page/manager.dart';


class MapPage extends ConsumerStatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

class _MapPageState extends ConsumerState<MapPage> {
  @override
  Widget build(BuildContext context) {



    final TextStyle style = const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black);
    final TextStyle style1 = const TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black);
    return Scaffold(
        body: Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: 640,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/map.png'),
          ),
        ),
      ),
      Column(
        children: [
          const SizedBox(
            height: 66,
          ),
          const Center(
              child: Text(
            'Выберите адрес',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          )),
          const Expanded(
            child: SizedBox(),
          ),
          Container(
            height: 254,
            width: double.maxFinite,

            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              const SizedBox(height: 42,),
              Container(
                margin: const EdgeInsets.only(left: 31),
                child: Text('ул.Гоголя', style: style,),),
              const SizedBox(height: 3,),
              Container(
                margin: const EdgeInsets.only(left: 31),
                child: Text('Проезд 2, дом 85', style: style,),),
                const SizedBox(height: 7,),
                Container(
                  margin: const EdgeInsets.only(left: 31),
                  child: Text('Ориентир музыкальная', style: style1,),),
                Container(
                  margin: const EdgeInsets.only(left: 31),
                  child: Text('школа №5', style: style1,),),
                const SizedBox(height: 25,),
                Center(child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xffFF8D23))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/map_page');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 266,
                    height: 53,
                    child: const Center(
                      child: Text(
                        'Подтвердить',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),)

            ],),
          )
        ],
      )
    ]));
  }
}
