import 'package:flutter/material.dart';
import 'package:flutter_application_1/student_add.dart';
import 'package:flutter_application_1/volkito.dart';

void main() {
  runApp(const MaterialApp(
    home: Sercan(),
    debugShowCheckedModeBanner: false,
  ));
}

class Sercan extends StatefulWidget {
  const Sercan({super.key});

  @override
  State<Sercan> createState() => _SercanState();
}

class _SercanState extends State<Sercan> {
  Manager selectedManager=Manager.withId(id: 0,firstname:'' , lastname:'', grade: 0);
  List<Manager> manager = [
    Manager.withId(id: 1,firstname: 'Volkan', lastname:'Akkoç', grade: 60),
    Manager.withId(id:2,firstname:'Kardelen', lastname: 'Akkoç', grade: 45),
    Manager.withId(id:3,firstname: 'Sedat', lastname:'Akkoç', grade: 30)
    ];

  @override
  Widget build(BuildContext context) {
    
     
    return Scaffold(
      appBar: AppBar(
        title:const Text('List Tile'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        leading:const Icon(Icons.menu),
      ),
      body: Column(
        children: <Widget>[
         
          Expanded(
            child: ListView.builder(
              itemCount: manager.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://pixabay.com/tr/photos/image-7728783/'),
                  ),
                  title: Text('${manager[index].firstname} ${manager[index].lastname}'),
                  subtitle: Text('Sınavdan aldığınız not: ${manager[index].grade}'),
                  trailing: buildStatusIcon(manager[index].grade),
                  onTap: () {
                    setState(() {
                      selectedManager=manager[index];                      
                    });
                    print(selectedManager.firstname);
                    
                  },
                );
              },
            ),
          ),
          Text('Seçili Öğrenci: ${selectedManager.firstname}'),
          Row(
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>const studentAdd()));
                
                  
                },
                  
                  
                   child: const Row(
                     children:<Widget> [
                      Icon(Icons.add),
                      SizedBox(width: 5.0,),
                       Text('Yeni Öğrenci'),
                     ],
                   )
                ),
                   
            
              
              
                  
          ),Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(onPressed: () {
                 
                },
                  
                  
                  
                   child: const Row(
                     children: <Widget>[
                      Icon(Icons.update),
                      SizedBox(width: 5.0),
                       Text('Güncelle'),
                     ],
                   )),
                   
            
              
                  
          ),
          Flexible(
                fit: FlexFit.tight,
                flex: 1,
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    manager.remove(selectedManager);
                  });

              

                  
                },
                   child: const Row(
                     children: <Widget>[
                      Icon(Icons.delete),
                      SizedBox(width: 5.0,),                      
                      Text('Sil')
                       
                     ],
                   )
                   ),
            
              
                  
          )
          ],
          )





           

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Ayarlar'),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Ana Sayfa'),
        BottomNavigationBarItem(icon: Icon(Icons.done),label: 'Doğru')
      ]),
      
      
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return const Icon(Icons.done);
    } else if (grade >= 40) {
      return const Icon(Icons.album);
    } else {
      return const Icon(Icons.clear);
    }
  }
}