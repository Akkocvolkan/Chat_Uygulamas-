import 'package:flutter/material.dart';
import 'package:flutter_application_1/student.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  int not=35;

  MyApp({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sınav Sonucu'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: const Text('DURUM'),
      ),
      body: Center(
        child: ElevatedButton(onPressed:(){
          String mesaj='';
          if(not>=50){
            mesaj='Geçti';
          }else if(not>=40){
            mesaj='Bütünlemeye Kaldı';
          }else{
            mesaj='kaldı';
          }
          var alert=AlertDialog(
            title: const Text('Sınav sonucum'),
            content: Text(mesaj),
          );
          showDialog(context: context, builder: (BuildContext context)=>alert);
        }, child:const Text('Sonucu Gör') ),
      ),
    );
  }

}