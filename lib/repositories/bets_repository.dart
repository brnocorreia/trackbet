// ignore_for_file: prefer_final_fields

import 'package:sqflite/sqflite.dart';
import 'package:trackbet/database/db.dart';
import 'package:trackbet/models/bet.dart';

class BetRepository {
  late Database db;
  List<Bet> _bets = [];

  List<Bet> get bets => _bets;

  BetRepository() {
    _initRepository(); 
  }

  _initRepository() async {
    await _getHouse();
    await _getType();
    await _getValue();
    await _getOdd();
  }

  _getHouse() async {
    db = await DB.instance.database;
  }

  _getType() async {
    
  }

  _getValue() async {
    
  }

  _getOdd() async {
    
  }
}