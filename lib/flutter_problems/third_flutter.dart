import 'package:flutter/material.dart';

// class ThirdFlutter extends StatelessWidget {
//   const ThirdFlutter({Key? key}) : super(key: key);
//
//   AnimationController _myAnimationController;
//   Animation<Size> _myAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: AnimatedBuilder(
//         animation: _myAnimationController,
//       ),
//     );
//   }
// }

class ThirdFlutter extends StatefulWidget {
  const ThirdFlutter({Key? key}) : super(key: key);

  @override
  _ThirdFlutterState createState() => _ThirdFlutterState();
}

class _ThirdFlutterState extends State<ThirdFlutter>{

  double _width = 150;
  double _height = 150;

  @override
  void initState() {
    super.initState();

  }

  void _animateUp(){
    setState(() {
      _width = 300;
      _height = 300;
    });
  }

  void _animateDown(){
    setState(() {
      _width = 150;
      _height = 150;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: _animateUp,
                child: const Text("Animate up"),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 1000),
              width: _width,
              height: _height,
              color: Colors.red,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: _animateDown,
                child: const Text("Animate down"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
