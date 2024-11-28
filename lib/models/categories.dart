class Category {
  String id;
  String categoryName;
  String seoUrl;

  // Constructor
  Category(this.id, this.categoryName, this.seoUrl);

  // JSON'dan Category nesnesi oluşturma
  Category.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? '',  // Eğer id null ise boş string ata
        categoryName = json['categoryName'] ?? '',  // Eğer categoryName null ise boş string ata
        seoUrl = json['seoUrl'] ?? '';  // Eğer seoUrl null ise boş string ata
}





