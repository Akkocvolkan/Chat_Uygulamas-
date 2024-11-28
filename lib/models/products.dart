
class Product {
  int id;
  int categoryId;
  String productName;
  String quantityPerUnit;
  double unitPrice;
  int unitsInStock;

  // Constructor
  Product(this.id, this.categoryId, this.productName, this.quantityPerUnit, this.unitPrice, this.unitsInStock);

  // Factory method for creating a Product from JSON
  Product.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        categoryId = json['categoryId'],
        productName = json['productName'],
        quantityPerUnit = json['quantityPerUnit'],
        unitPrice = json['unitPrice'].toDouble(), // Ensure unitPrice is double
        unitsInStock = json['unitsInStock'];

  // Convert a Product to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoryId': categoryId,
      'productName': productName,
      'quantityPerUnit': quantityPerUnit,
      'unitPrice': unitPrice,
      'unitsInStock': unitsInStock,
    };
  }
}
