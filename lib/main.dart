import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('flutter demo'),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          'body',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'NotoSansTC',
          ),
        ),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.redAccent,
      ),
    )));
