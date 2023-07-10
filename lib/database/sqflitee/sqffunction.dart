import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

class sqlhelper {
  ///create table with nametodo and column name as title and task
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE mycontacts(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        cname TEXT,
        cnumber TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }

  //create database  db()
  static Future<sql.Database> db() async {
    return sql.openDatabase('contacts.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTables(database);
    });
  }

  static Future<int> create_contact(String name, String number) async {
    final db = await sqlhelper.db();
    final data = {"cname": name, "cnumber": number};
    final id = await db.insert("mycontacts", data,
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String, dynamic>>> getDatas() async {
    final db = await sqlhelper.db();
    return db.query("mycontacts", orderBy: 'id');
  }

  static Future<List<Map<String, dynamic>>> getSingleData(int id) async {
    final db = await sqlhelper.db();
    return db.query('mycontacts', where: 'id=?', whereArgs: [id], limit: 1);
  }

  static updatecontact(int id, String name, String num) async {
    final db = await sqlhelper.db();
    final newdata = {
      'cname': name,
      'cnumber': num,
      'createAt': DateTime.now().toString()
    };
    final newid =
        await db.update('mycontacts', newdata, where: 'id=?', whereArgs: [id]);
    return newid;
  }

  static Future<void> deleteContact(int id) async {
    final db = await sqlhelper.db();
    try {
      await db.delete('mycontacts', where: "id=?", whereArgs: [id]);
    } catch (e) {
      debugPrint('$e something went wrong');
    }
  }
}
