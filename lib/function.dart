import 'package:flutter/material.dart';

void main(){
  
  runApp(MaterialApp(
    home: MyApp()
  ));
}
class MyApp extends StatelessWidget{
  String mesaj='Volkan Akkoç çok mu zeki !!!!';
  int not=100;

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    var ogrenciler=["Canberk Boyraz","Sercan Boyraz","Bahriye Boyraz"];
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
            itemCount: ogrenciler.length,
            
            itemBuilder: (BuildContext context,int index){
              return Text(ogrenciler[index]);

            })
        ),
          
          Center(
            child:ElevatedButton(
              onPressed:(){
                mesaj=sinavHesapla(55);
                mesajGoster(context,mesaj);
            
              },child: const Text('Sonucu Gör'), )
          ),
        ],
      ),
    );
  }
 String sinavHesapla(int not){
  String mesaj='';
                int not=55;
                if(not>=50){
                  mesaj='Geçti';
                }else if(not>=40){
                  mesaj='Bütünlemeye kaldı';
                }else{
                  mesaj='kaldı';
                }
                return mesaj;

 }
 void mesajGoster(BuildContext context,String mesaj){
  var alert=AlertDialog(
                  title: const Text('Sınav sonucu'),
                  content: Text(mesaj),
          
                );
                showDialog(context: context, builder: (BuildContext context)=>alert);
                
 }
}