import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  // Firebase'i başlatın
  WidgetsFlutterBinding.ensureInitialized(); // Uygulama başlatmadan önce çalıştırılır
  await Firebase.initializeApp(); // Firebase'i başlat

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anket Uygulaması'),

        ),
        body: SurveyList(),
      ),
    );
  }
}
class SurveyList extends StatefulWidget {
  @override
  State<SurveyList> createState() => _SurveyListState();
}

class _SurveyListState extends State<SurveyList> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('dilanketi').snapshots(),
      builder: (context,snapshot){
        if(!snapshot.hasData){
          return LinearProgressIndicator();
        }else{
          return buildBody(context,snapshot.data!.docs);
        }
      },

    );
    
    
    
    
  }
  
  Widget buildBody(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: EdgeInsets.only(top: 20.0),
      children: 
        snapshot.map<Widget>((data)=>buildListItem(context,data)).toList(),
      


    );
  }
  
  buildListItem(BuildContext context, DocumentSnapshot data) {
    final row=Anket.fromSnapshot((data));
    return Padding(
      key: ValueKey(row.isim),
      padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: ListTile(
          title: Text(row.isim),
          trailing: Text(row.oy.toString()),
          onTap: () => FirebaseFirestore.instance.runTransaction((transaction)async {
            final freshSnapshot=await transaction.get(row.reference!);
            final fresh=Anket.fromSnapshot(freshSnapshot);
            await transaction.update((row.reference!),{'oy':fresh.oy+1});
          },),
        ),
      ),
      );
  }
}

 final sahteSnapshot=[
  {'isim':'C#','oy':3},
  {'isim':'Java','oy':4},
  {'isim':'Dart','oy':5},
  {'isim':'C++','oy':7},
  {'isim':'Python','oy':90},
  {'isim':'Perl','oy':2},



 ];






class Anket {
  String isim;
  int oy;
  DocumentReference? reference;

  // fromMap: Map verisinden Anket nesnesi oluşturma
  Anket.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['isim'] != null), assert(map['oy'] != null),
        isim = map['isim'], oy = map['oy'];

  // fromSnapshot: Firestore'dan alınan DocumentSnapshot'ı Anket nesnesine dönüştürme
  Anket.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data() as Map<String, dynamic>, reference: snapshot.reference);
}






