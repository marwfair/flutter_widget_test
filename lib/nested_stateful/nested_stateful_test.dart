import 'package:flutter/material.dart';
import 'package:widget_test/nested_stateful/nested_stateful_widget.dart';

class NestedStatefulTestPage extends StatefulWidget {
  @override
  _NestedStatefulTestPageState createState() => _NestedStatefulTestPageState();
}

class _NestedStatefulTestPageState extends State<NestedStatefulTestPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nested Stateful Test'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          NestedStatefulWidget(1),
          RaisedButton(
              child: Text('Update'),
              onPressed: () {
                setState(() {
                  print('Updating State!');
                });
              })
        ])));
  }
}
