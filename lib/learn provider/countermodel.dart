// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// class MainModel extends ChangeNotifier {
//   int _counter = 0;
//
//   int get counter => _counter;
//
//   set counter(int value) {
//     if (value != _counter) {
//       _counter = value;
//       notifyListeners();
//     }
//   }
// }

// import 'package:flutter/foundation.dart';

// import 'package:flutter/material.dart';

import 'dart:async';

import 'package:flutter/cupertino.dart';

class MyProvider with ChangeNotifier {
  int count = 20;
  void updatecount(int count) {
    this.count = count;
    notifyListeners();
  }

  int starting = 0;
  void updatestarting(int starting) {
    this.starting = starting;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      updatestarting(timer.tick);
    });
  }

  String name = "sfyan flutter developer";
  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getUpdateName(String name) async {
    Future.delayed(const Duration(seconds: 8), () {
      updateName(name);
    });
  }

  bool change = false;
  void updateWidget() {
    // ignore: unnecessary_this
    change = !change;
    notifyListeners();
  }
}
