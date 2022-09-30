import 'package:sqflite/sqflite.dart';

class DAO{
static final dbName = "User.db";

static Future<Database> getConnection() async{
  String databasePath= "${getDatabasesPath()} $dbName";
  Database db = await openDatabase(databasePath,
  version: 1,
  onCreate: (db, _) async { 
    db.execute("CREATE TABLE person (id INT AUTOINCREMENT, name TEXT, phone TEXT, email TEXT), password TEXT;"); //referenciar as coisas e nomes aqui
},
);
return db;
}
}