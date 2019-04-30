import 'package:flutter/material.dart';

class StatelessBlockWidget extends StatelessWidget {
  const StatelessBlockWidget({this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(2), color: color);
  }
}
