
import 'package:projeto_2/DAO.dart';
import 'package:sqflite/sqflite.dart';

import '../model/person.dart';
import 'dao.dart';

class PersonRepository{
  static var _table = "person";
  static Future<int> insertContact(Map<String,dynamic>
  data)async{
    Database db = await DAO.getConnection();
    int result = await db.insert(_table, data);
    return result;
  }
static Future<List<Person>> findAll() async{
    Database db = await DAO.getConnection();
    final elements = await db.query(_table);
    return elements.map(
      (element) =>Person.fromMap(element)
    ).toList();
  }
}
