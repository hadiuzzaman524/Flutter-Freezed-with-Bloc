import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_classes.freezed.dart';
@freezed
abstract class User with _$User{
  const factory User(String name, int age)= _User;
}