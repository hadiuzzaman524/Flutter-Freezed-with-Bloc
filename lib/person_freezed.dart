import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_freezed.freezed.dart';

@freezed
class Person with _$Person {
  const factory Person(String name, int age, double cgpa) = _Person;
}
