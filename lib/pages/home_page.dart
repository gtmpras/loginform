import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {

  // @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Text("CatalogApp"),
        ),
        body: Center(
          child: Container(
          child: Text("Welcome to 30 days of flutter with prasoon."),
            ),
        ),
        drawer: Drawer(),// 3 dot botton at top left
      );
  }
}