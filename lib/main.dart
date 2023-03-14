import 'package:drop_down/alert.dart';
import 'package:flutter/material.dart';
import 'package:drop_down/snackbar.dart';
import 'package:drop_down/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Test(),
      // home: Sback(),
      home: Alert(),
    );
  }
}
