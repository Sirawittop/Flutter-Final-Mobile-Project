import 'package:flutterproject/model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;
import 'package:path/path.dart';

class DBHelperNote{
  static Database? _db;

  Future <Database?> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDatabase();
    return null;
  }

  initDatabase() async {
   io.Directory documentDirectory = await getApplicationDocumentsDirectory();
   String path = join(documentDirectory.path, 'Note.db');
   var db = await openDatabase(path, version: 1, onCreate: _createDatabase);
   return db;
  }

  _createDatabase(Database db , int version) async {
    await db.execute('''
    CREATE TABLE Note(
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL,
      description TEXT NOT NULL
    )
    ''');
  }

  Future<NoteModel> insert(NoteModel notemodel) async {
    var dbClient = await db;
    await dbClient!.insert('Note', notemodel.toMap());
    return notemodel;
  }

  Future<List<NoteModel>> getdataNote() async {
   await db;
   final List<Map<String, Object?>> QueryResult = await _db!.rawQuery('SELECT * FROM Note');
    return QueryResult.map((e) => NoteModel.fromMap(e)).toList();
  }

  Future<int> delete(int id) async {
    var dbClient = await db;
    return await dbClient!.delete('Note', where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(NoteModel notemodel) async {
    var dbClient = await db;
    return await dbClient!.update('Note', notemodel.toMap(), where: 'id = ?', whereArgs: [notemodel.id]);
  }
}