import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth=MediaQuery.of(context).size.width;
    double deviceHeight=MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white38,
          
          body: Container(
            width:deviceWidth ,
            height:deviceHeight/3,
            color: Colors.purple,
            child:const Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text('October 20, 2022',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight:FontWeight.bold ),)),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Text('My Todo List ',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),))
              ],
            ),
          ),
        
        ),
      ),

    );
  }
}