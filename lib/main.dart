import 'package:flutter/material.dart';
void main(){
  runApp(Practice());
}
class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Material(
        child: Center(
          child: Container(
          child: Text("Welcome to 30 days of flutter."),
            ),
        ),
      ),
    );
  }
}
