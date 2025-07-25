class Product{
  String id;
  int categoryId;
  String productName;
  String quantityPerUnit;
  String unitPrice;
  int unitsInStock;

  Product(this.id,this.categoryId,this.productName,this.quantityPerUnit,this.unitPrice,this.unitsInStock);


  Product.fromJson(Map<String,dynamic>json)
    : id=json['id'] ?? '',
    categoryId=json['categoryId'] ?? '',
    productName=json['productName'] ??'',
    quantityPerUnit=json['quantityPerUnit'] ?? '',
    unitPrice=json['unitPrice'] ??'',
    unitsInStock=json['unitsInStock'];




    Map<String,dynamic>toJson(){
      return {
        'id':id,
        'categoryId':categoryId,
        'productName':productName,
        'quantityPerUnit':quantityPerUnit,
        'unitPrice':unitPrice,
        'unitsInStock':unitsInStock,


      };

    }



}