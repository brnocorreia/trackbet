// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trackbet/database/dao/bet_dao.dart';

class BetList extends StatefulWidget {
  const BetList({ Key? key }) : super(key: key);

  @override
  _BetListState createState() => _BetListState();
}

class _BetListState extends State<BetList> {
  final BetDao _betDao = BetDao();

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}