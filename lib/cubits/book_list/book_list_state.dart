import 'package:equatable/equatable.dart';

import '../../model/book.dart';

class BookListState {}

class LoadingState extends BookListState {}

class LoadedState extends BookListState with EquatableMixin{
  final List<BookModel> bookList;
  LoadedState({required this.bookList});
  @override
  List<Object?> get props => [bookList];
}

class ErrorState extends BookListState with EquatableMixin{
  final String errorMsg;
  ErrorState({required this.errorMsg});
  @override
  List<Object?> get props => [errorMsg];
}
