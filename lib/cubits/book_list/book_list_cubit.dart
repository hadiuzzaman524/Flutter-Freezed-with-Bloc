import 'package:bloc/bloc.dart';

import 'book_list_state.dart';

class BookList extends Cubit<BookListState> {
  BookList() : super(BookListState());
}
