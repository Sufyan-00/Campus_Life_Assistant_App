import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETALLCLASSES
Future<List<GetallclassesRow>> performGetallclasses(
  Database database,
) {
  const query = '''
Select * from classcol
''';
  return _readQuery(database, query, (d) => GetallclassesRow(d));
}

class GetallclassesRow extends SqliteRow {
  GetallclassesRow(super.data);

  String get classname => data['classname'] as String;
  String get location => data['location'] as String;
  String get date => data['date'] as String;
}

/// END GETALLCLASSES
