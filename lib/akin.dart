import 'package:flutter/material.dart';


void main(){
  
  runApp(MaterialApp(
    home: MyApp()
  ));
}
class MyApp extends StatelessWidget{
  List <Person> personal=[Person(firstname: 'Engin ', lastname: 'Demiroğ', grade: 65),Person(firstname: 'Volkan ', lastname: 'Akkoç', grade: 40),Person(firstname: 'Kardelen', lastname: 'Akkoç', grade: 25),];
  String mesaj='Volkan Akkoç çok mu zeki !!!!';
  int not=100;

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
        Expanded(
          child:ListView.builder(
            itemCount: personal.length,
            
            itemBuilder: (BuildContext context,int index){
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2023/10/13/17/10/mushroom-8313142_1280.jpg'),
                ),
                title: Text(personal[index].firstname+' '+ personal[index].lastname),
                subtitle: Text('Sınavdan aldığınınz not: ${personal[index].grade}'),
                trailing: buildstatusIcon(personal[index].grade),
                onTap: () {
                  print(personal[index].firstname+' '+ personal[index].lastname);
                },
              );

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
  
 Widget buildstatusIcon(int grade) {
  if (grade>=50){
    return const Icon(Icons.done);

    
   }else if(grade>=40){
    return const Icon(Icons.album);
   
  }else{
    return const Icon(Icons.clear);
  }
  

}
}