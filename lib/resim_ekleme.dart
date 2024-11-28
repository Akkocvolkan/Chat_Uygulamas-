import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Saban(),
    debugShowCheckedModeBanner: false,
  ));
}

class Saban extends StatefulWidget{
  @override
  State<Saban> createState() => _SabanState();
}

class _SabanState extends State<Saban> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kullanıcı Giriş Ekranı'),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: _BodyBuild(),
    );
    
  }
  
  Widget _BodyBuild() {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child:TextFormField(
              decoration: InputDecoration(
                labelText:'Kullanıcı Girişi',
                hintText: 'text@gmail.com',
                border: OutlineInputBorder(),


              ),
            ),
            
             ),
             Expanded(
              child:TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifrenizi Giriniz',
                  hintText: '*********',
                  border: OutlineInputBorder()

                ),
              ) 
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));


              }, child: Text('Kaydet'))
        ],
      

      ),
      
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İkinci Sayfam'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Text('Volkan Akkoç Çok Zekisin'),
      ),
    );
  }
}

