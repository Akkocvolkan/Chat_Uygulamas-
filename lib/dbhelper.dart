import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{
  Database _db;



  Future<Database>get db async{
    _db ??= await initializedDb();
    return _db;
  }
  
  Future<Database> initializedDb() async{
    String DbPath=join( await  getDatabasesPath(),'etradeDb');
    var EtradeDb =await  openDatabase( DbPath,version: 1,onCreate: createDb);
    return EtradeDb;

  }

  void createDb(Database db, int version) async{
    db.execute('Create table products(id integer primary key,name text,lastname text ,grade integer , )');
  }
}