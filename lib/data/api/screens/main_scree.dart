import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/api/category_api.dart';
import 'package:flutter_application_1/data/api/widgets/product_list_widget.dart';
import 'package:flutter_application_1/data/product_api.dart';
import 'package:flutter_application_1/models/categories.dart';
import 'package:flutter_application_1/models/products.dart';
import 'package:http/http.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  List<Category> categories = [];
  List<Widget> categoryWidgets = [];
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    getCategoriesFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alışveriş Sistemi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            // Kategori Listesi
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryWidgets.isNotEmpty
                    ? categoryWidgets
                    : [Text('Yükleniyor...')], // Yükleniyor mesajı
              ),
            ),
            // Ürün Listesi
            ProductListWidget(products)
          ],
        ),
      ),
    );
  }

  void getCategoriesFromApi() {
    CategoryApi.getCategory().then((response) {
      if (response.statusCode == 200) { // Başarılı ise
        setState(() {
          Iterable list = json.decode(response.body);
          categories = list.map((category) => Category.fromJson(category)).toList();
          getCategoryWidgets();
        });
      } else {
        // Hata durumunda mesaj göster
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Veriler alınamadı: ${response.statusCode}')),
        );
      }
    }).catchError((error) {
      // Hata durumunda mesaj göster
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Bir hata oluştu: $error')),
      );
    });
  }

  void getCategoryWidgets() {
    categoryWidgets.clear(); // Listeyi sıfırla
    for (var category in categories) {
      categoryWidgets.add(getCategoryWidget(category));
    }
  }

  Widget getCategoryWidget(Category category) {
    return TextButton(
      onPressed: () {
        getProductsbyCategoryId(category); // Kategoriyi geçir
      },
      child: Text(
        category.categoryName, // Kategori adı
        style: const TextStyle(color: Colors.blueGrey),
      ),
    );
  }
  
  void getProductsbyCategoryId(Category category) {
    int categoryId = int.parse(category.id); // id'yi int'e çevir

    ProductApi.getProductsbyCategoryId(categoryId).then((response) {
      print(response.body); // API yanıtını konsola yazdır
      if (response.statusCode == 200) { // Başarılı ise
        setState(() {
          Iterable list = json.decode(response.body);
          products = list.map((product) => Product.fromJson(product)).toList();

          // Eğer ürün listesi boşsa kullanıcıya bilgi ver
          if (products.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Bu kategoriye ait ürün bulunamadı.')),
            );
          }
        });
      } else {
        // Hata durumunda mesaj göster
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Ürünler alınamadı: ${response.statusCode}')),
        );
      }
    }).catchError((error) {
      // Hata durumunda mesaj göster
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Bir hata oluştu: $error')),
      );
    });
  }
}
