import 'package:flutter/material.dart';
import 'package:flutter_application_1/bscreens/productv_list_screen.dart';

void main(){
  runApp(Sekorelax());
}

class Sekorelax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(BuildContext context) =>ProductvListScreen(),



      },
      initialRoute:'/' ,
    );
  }
}