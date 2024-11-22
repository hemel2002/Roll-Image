import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          'Hello',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              letterSpacing: 7.0,
              color: Colors.white),
        ),
      ),
      body: const RollImage(),
    ),
  ));
}

class RollImage extends StatefulWidget {
  const RollImage({super.key});

  @override
  State<RollImage> createState() => _RollImageState();
}

class _RollImageState extends State<RollImage> {
  int RimageNumber = 1;
  int LimageNumber = 2;
  void randomFun() {
    LimageNumber = Random().nextInt(7) + 1;
    RimageNumber = Random().nextInt(7) + 1;
    if (LimageNumber == RimageNumber) {
      randomFun();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      randomFun();
                    });
                  },
                  child: Image.asset('images/$LimageNumber.jpg'),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      randomFun();
                    });
                  },
                  child: Image.asset('images/$RimageNumber.jpg')),
            )),
          ],
        ),
      ),
    );
  }
}
