import 'package:application1/pages/home_page.dart';
import 'package:application1/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main(){
  runApp(Practice());
}
class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:Homepage(), only one route is accepted below in the line21 homepage route is already mentioned.
      themeMode:ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.orange,// only apply on the AppBar.
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
  
      routes: {
        "/": (context)=>LoginPage(),
        "/Login": (context)=>LoginPage(),
      },
    );
  }
}
