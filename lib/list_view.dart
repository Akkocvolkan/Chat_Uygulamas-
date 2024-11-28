import 'package:flutter/material.dart';
import 'package:flutter_application_1/students.dart';

void main(){
  
  runApp(MaterialApp(
    home: MyApp()
  ));
}
class MyApp extends StatelessWidget{
  List <Student> students=[Student('Engin', 'Demiroğ', 25,'K'),Student('Volkan', 'Akkoç', 65, 'Geçti'),Student('Kardelen', 'Akkoç', 40, 'Bütünlemeye kaldı'),];
  String mesaj='Volkan Akkoç çok mu zeki !!!!';
  int not=100;

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
        Expanded(
          child:ListView.builder(
            itemCount: students.length,
            
            itemBuilder: (BuildContext context,int index){
              return Text(students[index].firstname);

            })
        ),
          
          Center(
            child:ElevatedButton(
              onPressed:(){
                String mesaj='';
                if(not>=50){
                  mesaj='Geçti';
                }else if(not>=40){
                  mesaj='Bütünlemeye kaldı';
                }else{
                  mesaj='kaldı';
                }
          
          
          
          
                var alert=AlertDialog(
                  title: const Text('Sınav sonucu'),
                  content: Text(mesaj),
          
                );
                showDialog(context: context, builder: (BuildContext context)=>alert);
          
              },child: const Text('Sonucu Gör'), )
          ),
        ],
      ),
    );
  }

}