import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widget_test/stateful_test/stateless_block_widget.dart';

class StatefulTestPage extends StatefulWidget {
  @override
  _StatefulTestPageState createState() => _StatefulTestPageState();
}

class _StatefulTestPageState extends State<StatefulTestPage> {
  List<StatelessBlockWidget> blockWidgetList;

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

    blockWidgetList = List.generate(1000, (index) {
      return StatelessBlockWidget(color: colors[random.nextInt(9)]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Test'),
        ),
        body: GridView.builder(
          itemCount: blockWidgetList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  setState(() {
                    blockWidgetList[index] =
                        StatelessBlockWidget(color: colors[random.nextInt(9)]);
                  });
                },
                child: blockWidgetList[index]);
          },
        ));
  }
}
