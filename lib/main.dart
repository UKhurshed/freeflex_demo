import 'package:flutter/material.dart';
import 'package:freeflex/flutter_problems/second_flutter.dart';
import 'package:freeflex/flutter_problems/third_flutter.dart';

import 'flutter_problems/first_flutter.dart';

void main() {
  runApp(const MyApp());
}

/*
    Чтобы проверить той или иной выполненой задачи,
    укажите пожалуйста конкретный класс, в MaterialApp
    напр. home: FirstFlutter() - первая задача и т.д.
 */

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: FirstFlutter(),
    );
  }
}
