import 'package:flutter/material.dart';
import 'package:widget_test/inherited_test.dart';
import 'package:widget_test/stateful_test/stateful_test.dart';
import 'package:widget_test/stateless_test/stateless_test.dart';
import 'package:widget_test/nested_stateful/nested_stateful_test.dart';
import 'package:widget_test/timer_inherited_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TimerInheritedWidget(child: MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/stateless_test': (context) => StatelessTestPage(),
        '/stateful_test': (context) => StatefulTestPage(),
        '/nested_stateful_test': (context) => NestedStatefulTestPage(),
        '/inherited_test': (context) => InheritedTestPage(),
      },
    )
    );}
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TimerInheritedWidgetState state = TimerInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Stateless Test'),
              onPressed: () {
                Navigator.pushNamed(context, '/stateless_test');
              },
            ),
            RaisedButton(
                child: Text('Stateful Test'),
                onPressed: () {
                  Navigator.pushNamed(context, '/stateful_test');
                }),
            RaisedButton(
                child: Text('Nested Stateful Test'),
                onPressed: () {
                  Navigator.pushNamed(context, '/nested_stateful_test');
                }),
            Container(
              width: 200,
              height: 2,
              color: Colors.indigo,
            ),
            RaisedButton(
                child: Text('Inherited Test'),
                onPressed: () {
                  Navigator.pushNamed(context, '/inherited_test');
                }),
            Text(state.counter.toString())
          ],
        ),
      ),
    );
  }
}
