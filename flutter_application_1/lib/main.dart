import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Login screen", style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/logo.jpg'),
            Text(
              "Login Screen",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Text(
              "Enter Username",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(),
            SizedBox(height: 30),
            Text(
              "Enter password",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            TextField(),
            SizedBox(height: 30),
            MaterialButton(
              onPressed: () {},
              child: Text("Login", style: TextStyle(color: Colors.white)),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    ),
  );
}
