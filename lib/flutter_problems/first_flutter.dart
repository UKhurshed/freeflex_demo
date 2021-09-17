import 'package:flutter/material.dart';

const List<int> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

class FirstFlutter extends StatelessWidget {
  const FirstFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Flutter Problem"),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: numbers.length,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 2.0,
              color: Colors.grey,
            );
          },
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                numbers[index].toString(),
                style: const TextStyle(fontSize: 18),
              ),
            );
          }),
    );
  }
}
