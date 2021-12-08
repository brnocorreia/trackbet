
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DB {
  // Construtor com acesso privado
  DB._();
  // Criar uma instância DB
  static final DB instance = DB._();
  // Instância do SQLite
  static Database? _database;

  get database async {
    if (_database != null) return _database;

    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'trackbet.db'),
      version: 1,
      onCreate: _onCreate,
    );

  }


  _onCreate(db, version) async {
    await db.execute(_profile);
    await db.execute(_bets);
    await db.execute(_account);

    await db.insert('account', {'balance': 0});
  }

  String get _profile => '''
    CREATE TABLE profile (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      email TEXT
    );
  ''';

  String get _bets => '''
    CREATE TABLE bets (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      house TEXT,
      type TEXT,
      value REAL,
      odd REAL,
    );
  ''';

  String get _account => '''
    CREATE TABLE profile (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      balance REAL,
    );
  ''';
}