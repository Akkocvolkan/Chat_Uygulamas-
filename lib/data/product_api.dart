import 'package:http/http.dart' as http;
class ProductApi{
  static Future getProducts(){
    return http.get(Uri.parse('http://10.0.2.2:3000/products'));


  }
  static Future getProductsbyCategoryId(int categoryId){
    return http.get(Uri.parse('http://10.0.2.2:3000/products?categoryId=$categoryId'));

  }
}