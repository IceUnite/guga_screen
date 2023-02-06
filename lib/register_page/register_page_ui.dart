import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'manager.dart';



class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {

  bool isChecked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final manager = ref.watch(authManagerProvider);

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }


    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(229, 229, 229, 1.0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: 204,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                  padding: EdgeInsets.only(
                      top: 82,
                      bottom: 5,
                      left: (screenWidth - 120) / 2,
                      right: (screenWidth - 120) / 2),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 120,
                    height: 117,
                  )),
            ),
            const SizedBox(height: 57),
            Padding(
              padding: const EdgeInsets.only(left: 31, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Ваше полное имя',
                    style: TextStyle(color: Color(0xffC5C5C5)),
                  ),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                      color: Colors.black,
                    ))),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text(
                    'Введите номер телефона',
                    style: TextStyle(color: Color(0xffC5C5C5)),
                  ),
                  TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                      color: Colors.black,
                    ))),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Text(
                    'Даю согласие на обработку моих данных',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffFF8D23))),
                  onPressed: () => manager.checkTextField(name: nameController.text.trim(), phone: phoneController.text.trim()),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 220,
                    height: 53,
                    child: const Center(
                      child: Text(
                        'Далее',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
