import 'package:flutter/material.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Text('Hello World', style: TextStyle(color: Colors.white, fontSize: 32.0),),
          ),
        ),
      ),
    );
  }
}
