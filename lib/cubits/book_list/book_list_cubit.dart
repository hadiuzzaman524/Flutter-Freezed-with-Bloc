import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:untitled/model/book.dart';

import '../../model/methods.dart';
import 'book_list_state.dart';

class BookList extends Cubit<BookListState> {
  BookList() : super(BookListState());

  Future<void> fetchData() async {
    emit(LoadingState());
    try {
      final String responseBody = await getBookFromServer();
      final List<BookModel> _bookList = List<BookModel>.from(
          json.decode(responseBody).map((x) => BookModel.fromJson(x)));
      emit(LoadedState(bookList: _bookList));
    } catch (error) {
      emit(ErrorState(errorMsg: error.toString()));
    }
  }
}
