import 'dart:math';

import 'package:flutter/material.dart';

class NestedStatefulChildWidget extends StatefulWidget {
  NestedStatefulChildWidget(this.number);

  final int number;

  @override
  _NestedStatefulChildWidgetState createState() =>
      _NestedStatefulChildWidgetState(number);
}

class _NestedStatefulChildWidgetState extends State<NestedStatefulChildWidget> {
  _NestedStatefulChildWidgetState(this.number);

  final int number;

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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        color: colors[random.nextInt(9)],
        child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              number.toString(),
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            )));
  }
}
