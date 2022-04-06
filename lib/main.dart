import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/freezed_classes.dart';
import 'package:untitled/model/book.dart';
import 'package:untitled/person_freezed.dart';
import 'package:untitled/screen/home.dart';

import 'cubits/book_list/book_list_cubit.dart';

void main() {
/*  BookModel model = const BookModel(1, "hadi", "english", true);
  final json = model.toJson();
  final str = BookModel.fromJson(json);
  print(json);
  print(str);
  print(model);*/
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => BookList(),
        child: const HomePage(),
      ),
    );
  }
}
