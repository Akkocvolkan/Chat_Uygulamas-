import 'dart:async';

import 'package:flutter_application_1/bloc_pattern/data/product_service.dart';
import 'package:flutter_application_1/bloc_pattern/models/product.dart';

class ProductBlock {
  final productStreamController =StreamController.broadcast();
  Stream get getStream=>productStreamController.stream;


  List<Product> getAll(){
    return ProductService.getAll();
  }



}
final productBloc=ProductBlock();