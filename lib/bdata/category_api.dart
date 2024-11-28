import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;









class CategoryApi {

  static final CategoryApi _singleton=CategoryApi._internal();

  CategoryApi._internal();

  factory  CategoryApi(){
    return _singleton;
  }




  static Future getCategories(){
    return http.get(Uri.parse('http://10.0.2.2:3000/categories'));
  }
}