import 'dart:io';

import 'package:flutter/services.dart';
import 'package:hadith_demo/models/books.dart';
import 'package:hadith_demo/models/chapter.dart';
import 'package:hadith_demo/models/hadith.dart';
import 'package:hadith_demo/models/section.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

// here we open the database sqflite

class DatabaseHelper {
  static Future<Database> openDb() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "hadith_db.db");

// Check if the database exists
    var exists = await databaseExists(path);

    if (!exists) {
      // Should happen only the first time you launch your application
      print("Creating new copy from asset");

      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      // Copy from asset
      ByteData data = await rootBundle.load(url.join("assets", "hadith_db.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database");
    }

// open the database
    var db = await openDatabase(path, readOnly: true);
    return db;
  }

  // Books List Method
  static Future<List<Books>> getBooks(Database db) async {
    final result = await db.query('books');
    final resultList = result.map((row) => Books.fromMap(row)).toList();

    return resultList;
  }

// Chapters List Method
  static Future<List<Chapter>> getChapters(Database db) async {
    final result = await db.query('chapter');
    return result.map((row) => Chapter.fromMap(row)).toList();
  }

// Section List Method
  static Future<List<Section>> getSection(Database db) async {
    final result = await db.rawQuery('SELECT * FROM section');

    final resultList = result.map((row) => Section.fromMap(row)).toList();

    return resultList;
  }

// Hadith List Method
  static Future<List<Hadith>> getHadith(Database db) async {
    final result = await db.query('hadith');
    print(result);

    final resultList = result.map((row) => Hadith.fromMap(row)).toList();

    return resultList;
  }
}
