import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/products.dart';


class ProductListWidget extends StatelessWidget {
  final List<Product> products;

  ProductListWidget(this.products);

  @override
  Widget build(BuildContext context) {
    return products.isEmpty
        ? Center(child: Text('Ürün bulunamadı.'))
        : ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                title: Text(product.productName),
                subtitle: Text("Fiyat: ${product.productName} ₺"),
              );
            },
          );
  }
}
