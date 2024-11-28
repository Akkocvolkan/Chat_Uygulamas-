class Product{
  int? id;
  String? firstname;
  String? description;
  int? unitPrice;
  Product({this.firstname,this.description,this.unitPrice});
  Product.withId({this.id,this.firstname,this.description,this.unitPrice});

}