//import 'package:flutter/material.dart';
//import 'package:flutter_application_1/configs/colors.dart';
/*import 'package:flutter_application_1/controllers/logincontroller.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_application_1/controllers/logincontroller.dart';

LoginController loginController = Get.put(LoginController());
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Text("Enter username"),
                    TextField(
                      controller: usernameController,

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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 10),

              Obx(
                () => TextField(
                  obscureText: !loginController.isPasswordVisible.value,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter pin or password here",
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: GestureDetector(
                      child: Icon(
                        LoginController().isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off),

                      onTap: () {
                        LoginController().togglePassword();
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // MaterialButton(
              //   onPressed: () {},
              //   color: Colors.brown,
              //   textColor: Colors.white,
              //   child: Text("Login"),
              // ), // we must specify what this butoon does when it is pressed. () for no name
              GestureDetector(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 16, 2, 207),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.cyan, fontSize: 16),
                  ),
                ),
                onTap: () {
                  bool success = loginController.login(
                    usernameController.text,
                    passwordController.text,
                  );
                  if (success) {
                    Get.toNamed("/homescreen");
                  } else {
                    Get.snackbar(
                      "Login Failed",
                      "Invalid username or password",
                    );
                  }
                },
              ),
              Padding(
                padding: const EdgeInsetsGeometry.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    Text("Dont have an account?"),
                    SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                    ),
                    //child: Text("Signup"),
                    //onTap: () {
                    //  Get.toNamed("/");
                    //},
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
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:flutter_application_1/controllers/logincontroller.dart';
import 'package:get/get.dart';

LoginController loginController = Get.put(LoginController());
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/download.jpeg', height: 150, width: 200),
              const SizedBox(height: 20),

              // Username Field
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),
                child: Row(
                  children: [
                    const Text("Enter username"),
                    Expanded(
                      child: TextField(
                        controller: usernameController,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Use email or phone number",
                  prefixIcon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 30),

              // Password Label
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Enter Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Password Field with working eye icon
              Obx(
                () => TextField(
                  obscureText: !loginController.isPasswordVisible.value,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter pin or password here",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        loginController.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        loginController.togglePassword(); // Properly toggles
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Login Button
              GestureDetector(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 16, 2, 207),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.cyan, fontSize: 16),
                  ),
                ),
                onTap: () {
                  bool success = loginController.login(
                    usernameController.text,
                    passwordController.text,
                  );
                  if (success) {
                    Get.toNamed("/homescreen");
                  } else {
                    Get.snackbar(
                      "Login Failed",
                      "Invalid username or password",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),

              // Signup & Forgot Password Row
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                    ),
                    const Spacer(),
                    const Text("Forgot password?"),
                    const SizedBox(width: 5),
                    const Text(
                      "Reset",
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:flutter_application_1/controllers/logincontroller.dart';
import 'package:get/get.dart';

// KEEP controller here (same as yours)
LoginController loginController = Get.put(LoginController());

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/download.jpeg', height: 150, width: 200),
              const SizedBox(height: 20),

              // ✅ USERNAME LABEL
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Enter username", style: TextStyle(fontSize: 15)),
                ],
              ),
              const SizedBox(height: 10),

              // ✅ ONLY ONE TEXTFIELD (FIXED)
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Use email or phone number",
                  prefixIcon: const Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 30),

              // PASSWORD LABEL
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Enter Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // PASSWORD FIELD
              Obx(
                () => TextField(
                  obscureText: !loginController.isPasswordVisible.value,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter pin or password here",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        loginController.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        loginController.togglePassword();
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // LOGIN BUTTON
              GestureDetector(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                onTap: () async {
                  // DEBUG (optional)
                  print(usernameController.text);
                  print(passwordController.text);

                  bool success = await loginController.login(
                    usernameController.text,
                    passwordController.text,
                  );

                  if (success) {
                    Get.toNamed("/homescreen");
                  } else {
                    Get.snackbar(
                      "Login Failed",
                      "Invalid username or password",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),

              // SIGNUP ROW
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                    ),
                    const Spacer(),
                    const Text("Forgot password?"),
                    const SizedBox(width: 5),
                    const Text(
                      "Reset",
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} */

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:flutter_application_1/controllers/logincontroller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ✅ MOVE CONTROLLER HERE (FIX)
  final LoginController loginController = Get.put(LoginController());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/download.jpeg', height: 150, width: 200),
              const SizedBox(height: 20),

              // USERNAME LABEL
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Enter username", style: TextStyle(fontSize: 15)),
                ],
              ),
              const SizedBox(height: 10),

              // USERNAME FIELD
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Use email or phone number",
                  prefixIcon: const Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 30),

              // PASSWORD LABEL
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Enter Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // PASSWORD FIELD WITH WORKING EYE ICON
              Obx(
                () => TextField(
                  obscureText: !loginController.isPasswordVisible.value,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter pin or password here",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        loginController.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        loginController.togglePassword(); // ✅ FIXED
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // LOGIN BUTTON
              GestureDetector(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                onTap: () async {
                  bool success = await loginController.login(
                    usernameController.text,
                    passwordController.text,
                  );

                  if (success) {
                    Get.toNamed("/homescreen");
                  } else {
                    Get.snackbar(
                      "Login Failed",
                      "Invalid username or password",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),

              // SIGNUP ROW
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                    ),
                    const Spacer(),
                    const Text("Forgot password?"),
                    const SizedBox(width: 5),
                    const Text(
                      "Reset",
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:flutter_application_1/controllers/logincontroller.dart';
import 'package:get/get.dart';

LoginController loginController = Get.put(LoginController());
TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/download.jpeg', height: 150, width: 200),
              const SizedBox(height: 20),

              // ✅ FIXED USERNAME SECTION
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter username", style: TextStyle(fontSize: 15)),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Use email or phone number",
                  prefixIcon: const Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 30),

              // Password Label
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 10),

              // ✅ FIXED EYE ICON (WORKING)
              Obx(
                () => TextField(
                  obscureText: !loginController.isPasswordVisible.value,
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter pin or password here",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        loginController.isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        loginController.togglePassword(); // ✅ FIXED
                      },
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Login Button
              GestureDetector(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 16, 2, 207),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.cyan, fontSize: 16),
                  ),
                ),
                onTap: () async {
                  bool success = await loginController.login(
                    usernameController.text,
                    passwordController.text,
                  );

                  if (success) {
                    Get.toNamed("/homescreen");
                  } else {
                    Get.snackbar(
                      "Login Failed",
                      "Invalid username or password",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),

              const SizedBox(height: 10),

              // Signup & Forgot Password Row
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                    ),
                    const Spacer(),
                    const Text("Forgot password?"),
                    const SizedBox(width: 5),
                    const Text(
                      "Reset",
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/colors.dart';
import 'package:get/get.dart';

TextEditingController usernameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ✅ LOCAL STATE (NO GETX BUGS)
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/login_bg.jpeg', height: 150, width: 200),

              const SizedBox(height: 20),

              /// EMAIL
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter email"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Use email ",
                  prefixIcon: const Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter email"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Use email ",
                  prefixIcon: const Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 30),

              /// PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 10),

              /// ✅ WORKING EYE ICON (NO GETX)
              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter pin or password ",
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
                ),
              ),

              const SizedBox(height: 30),

              /// ✅ WORKING LOGIN BUTTON (FRONTEND TEST)
              GestureDetector(
                onTap: () {
                  String email = usernameController.text.trim();
                  String pass = passwordController.text.trim();

                  // TEMPORARY FRONTEND CHECK
                  if (email == "nelly@gmail.com" && pass == "12345") {
                    Get.toNamed("/homescreen");
                  } else {
                    Get.snackbar(
                      "Login Failed",
                      "Wrong email or password",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },

                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),

                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.cyan, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              /// SIGNUP ROW
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),

                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                    ),

                    const Spacer(),

                    const Text("Forgot password?"),
                    const SizedBox(width: 5),

                    const Text(
                      "Reset",
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/signup.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

TextEditingController usernameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/login_bg.jpeg', height: 150, width: 200),

              const SizedBox(height: 20),

              /// USERNAME
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter username"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter username",
                  prefixIcon: const Icon(Icons.person),
                ),
              ),

              const SizedBox(height: 20),

              /// EMAIL
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter email"),
              ),

              const SizedBox(height: 8),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Use email",
                  prefixIcon: const Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 30),

              /// PASSWORD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Password",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Enter pin or password",
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
                ),
              ),

              const SizedBox(height: 30),

              /// LOGIN BUTTON (CONNECTED TO BACKEND)
              GestureDetector(
                onTap: () async {
                  // ignore: avoid_print
                  print("Login button clicked");
                  String email = emailController.text.trim();
                  String pass = passwordController.text.trim();

                  if (email.isEmpty || pass.isEmpty) {
                    Get.snackbar("Error", "All fields are required");
                    return;
                  }

                  try {
                    var url = Uri.parse(
                      "http://192.168.100.108:80/habit_api/login.php",
                    );

                    var response = await http.post(
                      url,
                      body: {"email": email, "password": pass},
                    );

                    var data = json.decode(response.body);

                    if (data["success"] == 1) {
                      Get.toNamed("/homescreen");
                    } else {
                      Get.snackbar(
                        "Login Failed",
                        data["message"],
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    }
                  } catch (e) {
                    Get.snackbar("Error", "Server not reachable");
                  }
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.cyan, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              /// SIGNUP ROW
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Row(
                  children: [
                    const Text("Don't have an account?"),
                    const SizedBox(width: 5),

                    GestureDetector(
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Get.toNamed("/signup");
                      },
                    ),

                    const Spacer(),

                    const Text("Forgot password?"),
                    const SizedBox(width: 5),

                    const Text(
                      "Reset",
                      style: TextStyle(color: Colors.cyanAccent),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
