import 'package:flutter/material.dart';
import 'package:untitled/freezed_classes.dart';
import 'package:untitled/person_freezed.dart';
import 'package:untitled/screen/home.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
