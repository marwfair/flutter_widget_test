import 'dart:async';

import 'package:flutter/material.dart';

class _TimerWidget extends InheritedWidget {
  const _TimerWidget({
    @required this.data,
    @required Widget child,
  }) : super(child: child);

  final TimerInheritedWidgetState data;

  @override
  bool updateShouldNotify(_TimerWidget old) {
    return true;
  }
}

class TimerInheritedWidget extends StatefulWidget {
  TimerInheritedWidget({
    this.child,
  });

  final Widget child;

  @override
  TimerInheritedWidgetState createState() => TimerInheritedWidgetState();

  static TimerInheritedWidgetState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_TimerWidget) as _TimerWidget)
        .data;
  }
}

class TimerInheritedWidgetState extends State<TimerInheritedWidget> {
  int counter = 0;

  Timer updateTimer;

  @override
  void initState() {
    super.initState();
    createTimer();
  }

  void createTimer() {
    updateTimer?.cancel();
    updateTimer = Timer.periodic(
      Duration(milliseconds: 3000),
      (Timer t) {
        updateCounter(++counter);
      },
    );
  }

  void updateCounter(int counter) {
    setState(() {
      this.counter = counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _TimerWidget(
      data: this,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    updateTimer?.cancel();
    super.dispose();
  }
}
