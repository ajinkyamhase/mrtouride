import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mrtouride/navpages/main_page.dart';
import 'package:mrtouride/pilgrimage_page.dart';
import 'package:mrtouride/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios,
            size: 20,
            color:Colors.black ,),
        ),
      ),
      body:
      Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3.2,
                  //padding: EdgeInsets.only(top:50),
                  decoration: const BoxDecoration(
                    image:DecorationImage(
                        image: AssetImage("assets/image/logbg.png"),
                        fit: BoxFit.fitHeight
                    ) ,
                  ),
                ),
                Column(
                  children:<Widget> [
                    const Text("Login Now",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 20,),
                    Text("Please enter the details below to continue",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[700]
                      ),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(label: "Password",obscureText: true),
                    ],
                  ),
                ),
                Padding(padding:
                EdgeInsets.symmetric(horizontal: 40),

                  child: Container(
                    padding: EdgeInsets.only(top:30, left:3),

                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
                      },
                      color: Color(0xff052933),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text("Don't have an account?"),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUpPage()));
                      },
                      child: Text("Sign up",

                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,

                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),),
          ],
        ),
      ),
    );
  }
}

Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        autofocus: true,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
              horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.grey),
          ),
        ),
      ),
      SizedBox(height: 10,),
    ],
  );
}