import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/model/book.dart';

import '../cubits/book_list/book_list_cubit.dart';
import '../cubits/book_list/book_list_state.dart';
import '../model/methods.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BookList>(context).fetchData();

    return Scaffold(body: BlocBuilder<BookList, BookListState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is LoadedState) {
          return ListView.builder(
            itemBuilder: (ctx, ind) {
              return Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.book),
                    title: Text(state.bookList[ind].name),
                    subtitle: Text(state.bookList[ind].type),
                  ),
                  Divider(),
                ],
              );
            },
            itemCount: state.bookList.length,
          );
        }
        return const Center(child: Text("Something want to be wrong"));
      },
    ));
  }
}
