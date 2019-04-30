import 'package:flutter/material.dart';
import 'package:widget_test/stateless_test/stateful_block_widget.dart';

class StatelessTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stateless Test'),
        ),
        body: GridView.count(
          crossAxisCount: 10,
          children: List.generate(1000, (index) {
            return StatefulBlockWidget();
          }),
        ));
  }
}
