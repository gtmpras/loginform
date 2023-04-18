import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login.png",fit: BoxFit.cover,),//Image.asset\
          SizedBox(
            height: 20.0,
          ),
   Padding(
     padding: const EdgeInsets.symmetric( vertical:16.0, horizontal: 32.0 ),
     child: Column(
      children: [
              Text("Welcome ",style: TextStyle(fontSize: 22,
            fontWeight: FontWeight.bold,),
            ),
                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
            ),
            TextFormField(
              obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Password",
                  ),
            ),
         SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            child: Text("Login"),
            style: TextButton.styleFrom(),
            onPressed: () {
              print("Prasoon");
            },
            )
      ],
     ),
   )
        
        ],
      )
      );
  }
}