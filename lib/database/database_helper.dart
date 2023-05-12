import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sql.dart';

class DataBase {
  static Future<void> createTable(sql.Database database) async {
    await database.execute(
        'CREATE TABLE VACCINC (ID INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT, Age TEXT , VaccinationDate TEXT , NextVaccinationDate TEXT)');
  }

  static Future<sql.Database> createDataBase() async {
    return sql.openDatabase(
      'vaccines.db',
      version: 1,
      onCreate: (db, version) async {
        await createTable(db);
      },
    );
  }

  static Future<int> createData({
    required String name,
    required String age,
    required String vaccinationDate,
    required String nextVaccinationDate,
  }) async {
    final sql.Database db = await DataBase.createDataBase();

    final Map<String, Object> data = {
      'Name': name,
      'Age': age,
      'VaccinationDate': vaccinationDate,
      'NextVaccinationDate': nextVaccinationDate,
    };

    final int id = await db.insert('VACCINC', data,
        conflictAlgorithm: ConflictAlgorithm.replace);

    return id;
  }

  static Future<List<Map<String, dynamic>>> getData() async {
    final sql.Database db = await DataBase.createDataBase();
    return db.query('VACCINC', orderBy: 'ID');
  }

  static Future<void> deleteData(int id) async {
    final sql.Database db = await DataBase.createDataBase();
    db.delete('VACCINC', where: 'ID = ?', whereArgs: [id]);
  }
}
