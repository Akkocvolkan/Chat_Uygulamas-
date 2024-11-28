import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: Canberk(),
    debugShowCheckedModeBanner: false,
  ));
}




class Canberk extends StatelessWidget {
  const Canberk({super.key});

  @override
  Widget build(BuildContext context) {
    int not=65;
    String mesaj='';
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:const Text('Volkan Akkoç'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        leading:const Text('Menü'),
        actions: <Widget>[IconButton(
          icon:const Icon(Icons.menu),
          onPressed:()=>print('İkona basıldı'),
           
           
           
           )

        ],

      ),
      body:Center(
        child: ElevatedButton(onPressed:(){
          if(not>=70){
            mesaj='Geçti';
          }else if(not>=50){
            mesaj='Kıl payı geçti';
          }else{
            mesaj='Dersten kaldınız bir dahki sefere daha çok çalışınız';
          }
          var alert=AlertDialog(
            title:const Text('Sınav sonucunuz'),
            content: Text(mesaj),
          );
          showDialog(context: context, builder: (BuildContext context)=>alert);
          
          




        },
         child:const Text('Sonucu Gör')),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const[
          BottomNavigationBarItem(
            icon:Icon(Icons.home),label: 'Ana Sayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),label: 'Ayarlar',),
              BottomNavigationBarItem(
                icon:Icon(Icons.camera),label: 'Kamera', )


        ]),
        floatingActionButton: FloatingActionButton(
          onPressed:(){

          },
          child:const Text('+'),
          ),
    );
  }
}


