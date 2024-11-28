import 'package:flutter/material.dart';
import 'package:flutter_application_1/pattern/screens/question_list_screen.dart';

void main(){
  runApp(MyApppp());
}

class MyApppp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      routes: {
        '/':(BuildContext context)=>QuestionListScreen(),
      },
      initialRoute: '/',
    );
  }
}