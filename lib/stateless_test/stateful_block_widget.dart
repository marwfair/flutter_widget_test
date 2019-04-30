import 'dart:math';

import 'package:flutter/material.dart';

class StatefulBlockWidget extends StatefulWidget {
  @override
  _StatefulBlockWidgetState createState() => _StatefulBlockWidgetState();
}

class _StatefulBlockWidgetState extends State<StatefulBlockWidget> {
  final List colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.pink,
    Colors.teal,
    Colors.cyan,
    Colors.indigo,
    Colors.grey
  ];

  final Random random = Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(9));
  }

  @override
  void initState() {
    super.initState();
    index = random.nextInt(9);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            changeIndex();
          });
        },
        child: Container(margin: const EdgeInsets.all(2), color: colors[index]));
  }
}
