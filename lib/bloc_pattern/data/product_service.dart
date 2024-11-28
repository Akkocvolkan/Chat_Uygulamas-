import 'package:flutter_application_1/bloc_pattern/models/product.dart';

class ProductService {
   static List<Product> products=[];

    static ProductService _singleton = ProductService._internal();

    factory ProductService(){
      return _singleton;
    }


   ProductService._internal();


   static List<Product> getAll(){
    products.add( Product(1,'Acer Laptop',6000 ));
     products.add( Product(1,'Pavilion Laptop',7000 ));
      products.add( Product(1,'Asus Laptop',8000 ));
       products.add( Product(1,'Hp Laptop',9000 ));
       return products;
   }
}