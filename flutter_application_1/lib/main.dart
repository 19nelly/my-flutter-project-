import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        /*appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(
            "Login Screen",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          centerTitle: true,
        ),*/
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/download.jpeg', height: 150, width: 200),
                /*
              Text(
                "Login Screen",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              */
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        "Enter username",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), //makes the edges softer
                    hintText: "Use email or phone number",
                    prefixIcon: Icon(Icons.person), //desplays the icins
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter pin or password here",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.visibility), //displays the icins
                  ),
                ),
                SizedBox(height: 30),
                // MaterialButton(
                //   onPressed: () {},
                //   color: Colors.brown,
                //   textColor: Colors.white,
                //   child: Text("Login"),
                // ), // we must specify what this butoon does when it is pressed. () for no name
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: primaryColor),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.cyan, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsGeometry.fromLTRB(10, 5, 10, 0),
                  child: Row(
                    children: [
                      Text("Dont have an account?"),
                      SizedBox(width: 5),
                      Text("Signup", style: TextStyle(color: Colors.cyan)),
                      Spacer(), //To push content to the extreme end
                      Text("Forgot password?"),
                      SizedBox(width: 5),
                      Text("Reset", style: TextStyle(color: Colors.cyanAccent)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
