import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  const factory BookModel(int id, String name, String type, bool available) =
      _BookModel;
  factory BookModel.fromJson(Map<String,dynamic> json)=> _$BookModelFromJson(json);
}
