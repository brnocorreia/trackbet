import 'package:trackbet/models/bet.dart';
import 'package:sqflite/sqflite.dart';

import '../database.dart';

class BetDao {

  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_house TEXT, '
      '$_type TEXT,'
      '$_value FLOAT,'
      '$_odd FLOAT';
  static const String _tableName = 'bets';
  static const String _id = 'id';
  static const String _house = 'house';
  static const String _type = 'type';
  static const String _value = 'value';
  static const String _odd = 'odd';

  Future<int> save(Bet bet) async {
    final Database db = await getDatabase();
    Map<String, dynamic> contactMap = _toMap(bet);
    return db.insert(_tableName, contactMap);
  }

  Future<List<Bet>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    List<Bet> bets = _toList(result);
    return bets;
  }

  Map<String, dynamic> _toMap(Bet bet) {
    final Map<String, dynamic> betMap = {};
    betMap[_house] = bet.house;
    betMap[_type] = bet.type;
    betMap[_value] = bet.value;
    betMap[_odd] = bet.odd;
    return betMap;
  }

  List<Bet> _toList(List<Map<String, dynamic>> result) {
    final List<Bet> bets = [];
    for (Map<String, dynamic> row in result) {
      final Bet bet = Bet(
        row[_id],
        row[_house],
        row[_type],
        row[_value],
        row[_odd],
      );
      bets.add(bet);
    }
    return bets;
  }
}