import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guga_screen/profile_page/manager.dart';
import 'Widgets/achievment.dart';
import 'Widgets/profile_appbar.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

TextEditingController phoneController = TextEditingController();
TextEditingController adressController = TextEditingController();

class _ProfilePageState extends ConsumerState<ProfilePage> {
  // String Phone = '+7 4991133630';
  // String Adress = 'ул.Гоголя, 2 проезд. Дом 85';

  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(profileManagerProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProfileAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                width: 120,
                height: 120,
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Center(
                      child: Container(
                          width: 96,
                          height: 96,
                          child:
                              Image.asset('assets/images/Profile_Photo.png')),
                    ),
                    Container(
                      child: IconButton(
                          splashRadius: 16,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/Profile_Photo_Change.svg',
                            width: 22,
                            height: 22,
                          )),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
              child: Center(
                child: Text(
                  "Алексей",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 18,
              child: Center(
                child: Text(
                  manager.profilePageStateHolder.userAdress,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff757575)),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const ProfileAchievment(
              number: 3,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 32, right: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Данные',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Нажмите чтобы изменить",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 30,
                    child: TextField(
                      onSubmitted: (value){
                        manager.changeUserPhone(Phone: value);
                        print(manager.profilePageStateHolder.phoneNumber);
                        },
                      controller: phoneController,
                      decoration: InputDecoration(
                        //TODO Сделать перерисовку
                        hintText: manager.profilePageStateHolder.phoneNumber
                      ),

                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Нажмите чтобы изменить",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xffC5C5C5),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: TextField(
                      onChanged: (value){
                        manager.changeUserAdress(Adress: value);
                        },
                      decoration: InputDecoration(
                        //TODO Сделать перерисовку
                          hintText: manager.profilePageStateHolder.userAdress
                      ),
                      controller: adressController,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xffFF3030), width: 1))),
                      height: 18,
                      child: const Text(
                        "Выйти из аккаунта",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFF3030),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
