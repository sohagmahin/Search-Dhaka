import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DBhelpers {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'bus_list.db'), version: 1,
        onCreate: (sql.Database db, int version) {
      return db.execute(
          'CREATE TABLE bus_list (id TEXT PRIMARY KEY,name TEXT,type TEXT,stopageList TEXT,sourceName TEXT,destinationName TEXT,sourceLatitude REAL,sourceLongitude REAL,destinationLatitude REAL,destinationLongitude REAL)');
    });
  }

  static Future<void> insertBus({
      String tableName, Map<String, dynamic> busData}) async {
    final db = await DBhelpers.database();
    final insertInfo = await db.insert(tableName, busData,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    print('Data Inserted : ' + insertInfo.toString());
  }

  static Future<List<Map<String, dynamic>>> getData({String tableName}) async {
    final db = await DBhelpers.database();
    List list = await db.query(tableName);
    await db.close();
    return list;
  }

  static Future<void> deleteBus(String tableName, String id) async {
    final db = await DBhelpers.database();
    await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }

  static Future<void> updateBus(
      String tableName, Map<String, dynamic> updateTask) async {
    final db = await DBhelpers.database();
    final updateInfo = await db.update(tableName, updateTask,
        where: 'id = ?', whereArgs: [updateTask['id']]);
    print(updateInfo);
  }
}
