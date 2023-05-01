import 'package:application1/util/routes.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
String name = "";
bool changeButton = false;
final _formkey = GlobalKey<FormState>();

moveToHome(BuildContext context)async{
  if (_formkey.currentState != null && _formkey.currentState.validate()){
    setState(() {
                    changeButton= true;
                  });
                   
                  await Future.delayed(
                    Duration(seconds: 1)
                  );
                 await Navigator.pushNamed(context, MyRoutes.homeRoute);
                 setState(() {
                   changeButton = false;
                 });
  }             
}
  @override
  Widget build(BuildContext context) 
  
  {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(//scroll option in page
        child:Form(
            key: _formkey,
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
                     validator: (Value){
                      if (Value == null || Value.isEmpty){
                        return "Username cannot be empty";
                      }
                      return null;
                     },
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
                      validator: (Value){
                      if (Value == null || Value.isEmpty){
                        return "Password cannot be empty";
                      }
                      else if (Value.length <6){
                        return "Password length should be atleast 6.";
                      }
                      return null;
                     },
                ),
             SizedBox(
                height: 40.0,
              ),
        
              InkWell(
                onTap: () => moveToHome(context),
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
        ),
      )
      );
  }
}