// lib/main.dart
// ignore_for_file: depend_on_referenced_packages

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider_learn/getjsonfakeapi.dart';
// import 'package:provider_learn/fluttercharts.dart';
import 'package:provider_learn/learn%20provider/countermodel.dart';
import 'package:provider/provider.dart';
// import 'Myhomepage.dart';
// import 'firstpage.dart';
// import 'secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  MyProvider provider = Provider.of<MyProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: const MaterialApp(
        home: Fake(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
