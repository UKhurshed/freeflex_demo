import 'package:flutter/material.dart';

class SecondFlutter extends StatelessWidget {
  const SecondFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FirstScreen();
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: InkWell(
          child: const Text("На экран 1"),
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondScreen())),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: InkWell(
          child: const Text("На экран 2"),
          onTap: () => Navigator.pop(context),
        ),
      ),
    );
  }
}
