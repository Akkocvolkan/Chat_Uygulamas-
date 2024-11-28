import 'dart:async';

import 'package:flutter_application_1/bdata/product_api.dart';
import 'package:flutter_application_1/bmodels/bproducts.dart';

class ProductBloc{
  final ProductStreamControler=StreamController.broadcast();
  Stream get getStream=>ProductStreamControler.stream;




  List<Product>getAll(){
    return ProductApi.getProducts();

  }

  }