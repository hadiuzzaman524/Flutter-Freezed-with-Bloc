import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/constants.dart';

Future<String> getBookFromServer()async{
  try {
    final response =await http.get(
        Uri.parse("https://simple-books-api.glitch.me/books"));

    if(response.statusCode==200){
      print("conncction ok");
      return response.body;
    }
  }catch(error){
    rethrow;
  }

  return "";
}