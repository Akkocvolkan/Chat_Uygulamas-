class Category{
  int id;
  String categoryName;
  String seoUrl;

  Category(this.id,this.categoryName,this.seoUrl);

  Category.fromJson(Map<String,dynamic>json)
    : id=json['id'] ?? '',
    categoryName=json['categoryName'] ?? '',
    seoUrl=json['seoUrl'] ?? '';



}