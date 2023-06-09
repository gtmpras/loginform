import 'package:application1/util/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
String name = "";
bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(//scroll option in page
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
            fit: BoxFit.cover,//Image.asset\
          
            ),
            SizedBox(
              height: 20.0,
            ),
         Padding(
           padding: const EdgeInsets.symmetric( vertical:16.0, horizontal: 32.0 ),
           child: Column(
        children: [
                Text("Welcome $name",style: TextStyle(fontSize: 22,
              fontWeight: FontWeight.bold,),
              ),
                      TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",

                    ),
                    onChanged: (value){
                      name= value;
                      setState(() {
                        // this code is only used in case of statefull it rebuilds the whole page.
                      });
                    },
              ),
              TextFormField(
                obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Password",
                    ),
              ),
           SizedBox(
              height: 40.0,
            ),

            InkWell(
              onTap: ()async{
                setState(() {
                  changeButton= true;
                });
               
                 
                await Future.delayed(
                  Duration(seconds: 1)
                );
               Navigator.pushNamed(context, MyRoutes.homeRoute);
            
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                    height: 40,
                    width: changeButton ? 80: 150,            
                    alignment: Alignment.center,
                    child: changeButton?Icon(Icons.done,color:Colors.amber,):Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18,
                        ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton ? 50: 8),
                    ),
              ),
            ),
            // ElevatedButton(
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(),
            //   onPressed: () {
            //   
            //            },
            //   )
        ],
           ),
         )
          
          ],
        ),
      )
      );
  }
}