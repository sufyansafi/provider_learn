
import 'package:flutter/cupertino.dart';
// ignore: depend_on_referenced_packages

import 'package:provider_learn/model.dart';
// import 'package:provider/provider.dart';

class App extends ChangeNotifier {
//providr working with api//

  List<Get> listformdata = [];
  // jo bhi model k through milega vo parameter pass kr dengy//
  void updateGET(List<Get> listformdata) {
    this.listformdata = listformdata;
    notifyListeners(); 
  }
}