// ignore_for_file: prefer_const_constructors, unused_field

import 'package:flutter/material.dart';
import 'package:trackbet/app_icons.dart';
import 'package:trackbet/database/dao/bet_dao.dart';


class BetListPage extends StatefulWidget {
  const BetListPage({ Key? key }) : super(key: key);

  @override
  _BetListState createState() => _BetListState();
}

class _BetListState extends State<BetListPage> {
  final BetDao _betDao = BetDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF33443c),
      appBar: AppBar(
        leading: Icon(AppIcons.casino, color: Color(0xFF33443c),),
        title: Text("Bets",
        style: TextStyle(
          color: Color(0xFF33443c),
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: 
        Icon(Icons.add),
      ) ,
    );
  }
}