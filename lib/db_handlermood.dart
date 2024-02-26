import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

import 'model.dart';

class MoodDbHelper {
  static Database? _db;

  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDatabase();
    return _db;
  }

  Future<Database> initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'Mood6.db');
    var db = await openDatabase(path, version: 1, onCreate: _createDatabase);
    return db;
  }

  void _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE Mood6 (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        date TEXT NOT NULL,
        mood TEXT NOT NULL
      )
    ''');
  }

  Future<MoodEntry> insert(MoodEntry moodEntry) async {
    var dbClient = await db;
    await dbClient!.insert('Mood6', moodEntry.toMap());
    return moodEntry;
  }

Future<List<MoodEntry>> getdataMood() async {
  var dbClient = await db;
  final List<Map<String, dynamic>> queryResult = await dbClient!.query('Mood6', columns: ['*']);
  return queryResult.map((e) => MoodEntry.fromMap(e)).toList();
}

//update
Future<int> update(MoodEntry moodEntry) async {
  var dbClient = await db;
  return await dbClient!.update('Mood6', moodEntry.toMap(), where: 'id = ?', whereArgs: [moodEntry.id]);
}



}
