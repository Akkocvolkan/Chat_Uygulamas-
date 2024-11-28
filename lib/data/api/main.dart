import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/api/screens/main_scree.dart';

void main(){
  runApp(HttpApp());
}

class HttpApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
    
  }
}