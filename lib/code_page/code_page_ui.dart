import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'manager.dart';

class CodePage extends ConsumerStatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  ConsumerState<CodePage> createState() => _CodePageState();
}

class _CodePageState extends ConsumerState<CodePage> {
  TextEditingController s1 = TextEditingController();
  TextEditingController s2 = TextEditingController();
  TextEditingController s3 = TextEditingController();
  TextEditingController s4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(codeManagerProvider);
    TextStyle style = const TextStyle(
        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff757575));
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 57),
              Row(children: [
                const SizedBox(
                  width: 31,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ]),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                'Введите код',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              )),
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  'На ваш номер телефона мы отправили СМС',
                  style: style,
                ),
              ),
              Center(
                child: Text(
                  'с четырехзначным кодом. Введите его',
                  style: style,
                ),
              ),
              Center(
                child: Text(
                  'чтобы зарегестрироваться',
                  style: style,
                ),
              ),
              const SizedBox(
                height: 61,
              ),
              Row(
                children:  [
                  const Expanded(
                    child: SizedBox(),
                  ),
                  SizedBox(
                      width: 30,
                      child: TextField(
                        controller: s1,
                        decoration: const InputDecoration(
                          counterText: '',
                        ),
                        maxLength: 1,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 30,
                      child: TextField(
                        controller: s2,
                        decoration: const InputDecoration(
                          counterText: '',
                        ),
                        maxLength: 1,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 30,
                      child: TextField(
                        controller: s3,
                        decoration: const InputDecoration(
                          counterText: '',
                        ),
                        maxLength: 1,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                      width: 30,
                      child: TextField(
                        controller: s4,
                        decoration: const InputDecoration(
                          counterText: '',
                        ),
                        maxLength: 1,
                      )),
                  const Expanded(
                    child: SizedBox(),
                  ),
                ],
              ),
              const SizedBox(
                height: 285,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffFF8D23))),
                onPressed: () {
                  manager.checkTextField(s1: s1.text, s2: s2.text, s3: s3.text, s4: s4.text);
                },
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
            ],
          ),
        ));
  }
}
