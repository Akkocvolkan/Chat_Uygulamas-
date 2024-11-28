import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/api/category_api.dart';
import 'package:flutter_application_1/models/categories.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  List <Category> categories = [];
  List<Widget> categoryWidgets = [];

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryWidgets,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getCategoriesFromApi() {
    CategoryApi.getCategory().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        categories = list.map((category) => Category.fromJson(category)).toList();
        getCategoryWidgets();
      });
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
      onPressed: () {},
      child: Text(
        category.categoryName,
        style: const TextStyle(color: Colors.blueGrey),
      ),
    );
  }
}
