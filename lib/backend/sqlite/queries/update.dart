import 'package:sqflite/sqflite.dart';

/// BEGIN ADDCLASS
Future performAddclass(
  Database database, {
  String? classname,
  String? date,
  String? location,
}) {
  final query = '''
insert into classcol (classname,date,location) values ('$classname','$date','$location')
''';
  return database.rawQuery(query);
}

/// END ADDCLASS

/// BEGIN UPDATECLASS
Future performUpdateclass(
  Database database, {
  String? classname,
  String? date,
  String? location,
}) {
  final query = '''
update classcol set
classname = '$classname',
date='$date',
location='$location' 
  where classname = '$classname'
''';
  return database.rawQuery(query);
}

/// END UPDATECLASS

/// BEGIN DELETECLASS
Future performDeleteclass(
  Database database, {
  String? classname,
}) {
  final query = '''
delete from classcol where classname = '$classname'
''';
  return database.rawQuery(query);
}

/// END DELETECLASS
