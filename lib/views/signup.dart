//ORIGINAL CODE
/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 40),

              Image.asset('assets/download.jpeg', height: 150, width: 200),

              const SizedBox(height: 10),

              const Text(
                "Create Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              const Text(
                "Sign up to get started",
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),

              const SizedBox(height: 30),

              /// FULL NAME
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Fullname",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                decoration: InputDecoration(
                  hintText: "Fullname",

                  prefixIcon: const Icon(Icons.person),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// EMAIL
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Email or Phone Number",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                decoration: InputDecoration(
                  hintText: "Email or Phone Number",

                  prefixIcon: const Icon(Icons.email),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                obscureText: !isPasswordVisible,

                decoration: InputDecoration(
                  hintText: "Password",

                  prefixIcon: const Icon(Icons.lock),

                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),

                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// CONFIRM PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirm Password",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                obscureText: !isConfirmPasswordVisible,

                decoration: InputDecoration(
                  hintText: "Confirm Password",

                  prefixIcon: const Icon(Icons.lock),

                  suffixIcon: IconButton(
                    icon: Icon(
                      isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),

                    onPressed: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              /// SIGN UP BUTTON
              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {
                    print("Sign Up button pressed");
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),

                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// LOGIN REDIRECT
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },

                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}*/

//UPDATED CODE

/*import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

TextEditingController fullnameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              Image.asset('assets/download.jpeg', height: 150, width: 200),

              const SizedBox(height: 10),

              const Text(
                "Create Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              const Text(
                "Sign up to get started",
                style: TextStyle(color: Colors.black54),
              ),

              const SizedBox(height: 30),

              /// FULL NAME
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Fullname",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: fullnameController,
                decoration: InputDecoration(
                  hintText: "Fullname",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// EMAIL
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Email or Phone Number",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// CONFIRM PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Confirm Password",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: confirmPasswordController,
                obscureText: !isConfirmPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              /// 🔥 SIGN UP BUTTON (CONNECTED)
              GestureDetector(
                onTap: () async {
                  String fullname = fullnameController.text.trim();
                  String email = emailController.text.trim();
                  String pass = passwordController.text.trim();
                  String confirmPass = confirmPasswordController.text.trim();

                  if (fullname.isEmpty ||
                      email.isEmpty ||
                      pass.isEmpty ||
                      confirmPass.isEmpty) {
                    Get.snackbar("Error", "All fields are required");
                    return;
                  }

                  if (pass != confirmPass) {
                    Get.snackbar("Error", "Passwords do not match");
                    return;
                  }

                  try {
                    var url = Uri.parse(
                      "http://192.168.100.113/habit_api/register.php",
                    );

                    var response = await http.post(
                      url,
                      body: {
                        "fullname": fullname,
                        "email": email,
                        "password": pass,
                      },
                    );

                    print("SERVER RESPONSE: ${response.body}");

                    var data = json.decode(response.body);

                    if (data["success"] == 1) {
                      Get.snackbar("Success", "Account created");

                      Get.toNamed("/homescreen");
                    } else {
                      Get.snackbar("Error", data["message"]);
                    }
                  } catch (e) {
                    Get.snackbar("Error", "Server not reachable");
                    print(e);
                  }
                },

                child: Container(
                  height: 55,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// LOGIN REDIRECT
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:get/get.dart';

TextEditingController fullnameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

// ✅ TEMP STORAGE (SIMULATES DATABASE)
List<Map<String, String>> users = [];

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(15),

        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              Image.asset('assets/login_bg.jpeg', height: 150, width: 200),

              const SizedBox(height: 10),

              const Text(
                "Create Account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              const Text(
                "Sign up to get started",
                style: TextStyle(color: Colors.black54),
              ),

              const SizedBox(height: 30),

              /// FULLNAME
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter Fullname"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: fullnameController,
                decoration: InputDecoration(
                  hintText: "Fullname",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// EMAIL
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter Email"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter Password"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// CONFIRM PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Confirm Password"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: confirmPasswordController,
                obscureText: !isConfirmPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isConfirmPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isConfirmPasswordVisible = !isConfirmPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              /// SIGNUP BUTTON
              GestureDetector(
                onTap: () {
                  String fullname = fullnameController.text.trim();
                  String email = emailController.text.trim();
                  String pass = passwordController.text.trim();
                  String confirmPass = confirmPasswordController.text.trim();

                  // 🔴 VALIDATION
                  if (fullname.isEmpty ||
                      email.isEmpty ||
                      pass.isEmpty ||
                      confirmPass.isEmpty) {
                    Get.snackbar("Error", "All fields are required");
                    return;
                  }

                  if (pass != confirmPass) {
                    Get.snackbar("Error", "Passwords do not match");
                    return;
                  }

                  // 🔴 CHECK IF USER EXISTS
                  bool userExists = users.any((user) => user["email"] == email);

                  if (userExists) {
                    Get.snackbar(
                      "Account Exists",
                      "Proceed to login",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }

                  // ✅ SAVE USER
                  users.add({
                    "fullname": fullname,
                    "email": email,
                    "password": pass,
                  });

                  // ✅ SUCCESS
                  Get.snackbar("Success", "Account created!");

                  Get.toNamed("/homescreen");
                },

                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// LOGIN REDIRECT
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
