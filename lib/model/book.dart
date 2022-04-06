import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
abstract class BookModel with _$BookModel {
  const factory BookModel(int id, String name, String type, bool available) =
      _BookModel;
}
