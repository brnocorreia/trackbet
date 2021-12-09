// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GraphicsPage extends StatefulWidget {
  const GraphicsPage({ Key? key }) : super(key: key);

  @override
  _GraphicsPageState createState() => _GraphicsPageState();
}

class _GraphicsPageState extends State<GraphicsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF33443c),
      appBar: AppBar(
        leading: Icon(Icons.bar_chart, color: Color(0xFF33443c),),
        title: Text("Charts",
        style: TextStyle(
          color: Color(0xFF33443c),
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.unpublished,
                    color: Colors.white,
                    size: 50,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Coming Soon',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                    )
                  ],
                ),
              )
        )
      ;
  }
}