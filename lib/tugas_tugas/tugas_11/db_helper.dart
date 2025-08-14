// import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:ppkd_b_3/tugas_tugas/tugas_11/user.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static Future<Database> databaseHelper() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'belanjaan.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE belanjaan(id INTEGER PRIMARY KEY, nama TEXT, barang TEXT, harga INTEGER)',
        );
      },
      version: 1,
    );
  }

  static Future<void> registeraBelanjaan(Belanjaan belanjaan) async {
    final db = await databaseHelper();
    await db.insert(
      'belanjaan',
      belanjaan.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Belanjaan>> getAllBelanjaan() async {
    final db = await databaseHelper();
    final List<Map<String, dynamic>> maps = await db.query('belanjaan');
    return List.generate(maps.length, (i) => Belanjaan.fromMap(maps[i]));
  }
}
