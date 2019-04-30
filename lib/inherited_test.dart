import 'package:flutter/material.dart';
import 'package:widget_test/timer_inherited_widget.dart';

class InheritedTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TimerInheritedWidgetState state = TimerInheritedWidget.of(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inherited Test'),
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Container(width: 200, child: Text(state.counter.toString())),
            RaisedButton(
              child: Text('Reset'),
              onPressed: () {
                state.counter = 0;
              },
            ),
          ],
        )));
  }
}
