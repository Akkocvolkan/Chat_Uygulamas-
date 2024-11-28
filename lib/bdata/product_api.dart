import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;







class ProductApi {


  static final ProductApi _singleton=ProductApi._internal();


  
  ProductApi._internal();

   factory ProductApi(){
    return _singleton;
  }
  




  static Future getProducts(){
    return http.get(Uri.parse('http://10.0.2.2:3000/products'));



           
    

  }
}





