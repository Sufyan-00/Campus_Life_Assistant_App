import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'campusapp',
      'campus_app.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetallclassesRow>> getallclasses() => performGetallclasses(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future addclass({
    String? classname,
    String? date,
    String? location,
  }) =>
      performAddclass(
        _database,
        classname: classname,
        date: date,
        location: location,
      );

  Future updateclass({
    String? classname,
    String? date,
    String? location,
  }) =>
      performUpdateclass(
        _database,
        classname: classname,
        date: date,
        location: location,
      );

  Future deleteclass({
    String? classname,
  }) =>
      performDeleteclass(
        _database,
        classname: classname,
      );

  /// END UPDATE QUERY CALLS
}
