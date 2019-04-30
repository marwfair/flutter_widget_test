import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_test/nested_stateful/nested_stateful_child_widget.dart';

class NestedStatefulWidget extends StatefulWidget {
  NestedStatefulWidget(this.number);

  final int number;

  @override
  _NestedStatefulWidgetState createState() =>
      _NestedStatefulWidgetState(number);
}

class _NestedStatefulWidgetState extends State<NestedStatefulWidget> {
  _NestedStatefulWidgetState(this.number);

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
        width: 300,
        height: 300,
        color: colors[random.nextInt(9)],
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  number.toString(),
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                )),
            NestedStatefulChildWidget(2)
          ],
        ));
  }
}
