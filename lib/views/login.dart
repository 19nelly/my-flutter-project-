// ignore_for_file: avoid_print

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
import 'package:get/get.dart';
import '../configs/routes.dart';

// ✅ Dark blue primary color
const Color primaryColor = Color(0xFF0D47A1);

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
            children: [
              Image.asset('assets/login_bg.jpeg', height: 150, width: 200),
              const SizedBox(height: 20),

              _buildLabel("Enter username"),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Enter username",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              _buildLabel("Enter email"),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Use email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              _buildLabel("Enter Password"),
              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Enter pin or password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () =>
                        setState(() => isPasswordVisible = !isPasswordVisible),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              /// LOGIN BUTTON with demo credentials
              GestureDetector(
                onTap: () {
                  String username = usernameController.text.trim();
                  String email = emailController.text.trim();
                  String pass = passwordController.text.trim();

                  // ✅ Demo credentials check
                  if (username == "Nelly" &&
                      email == "nelly@gmail.com" &&
                      pass == "12345") {
                    Get.offAllNamed(
                      AppRoutes.homescreen,
                    ); // go straight to dashboard
                  } else {
                    Get.snackbar("Login Failed", "Invalid demo credentials");
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
                    style: TextStyle(
                      color: Color.fromARGB(255, 187, 116, 116),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.signup),
                    child: Text(
                      "Signup",
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

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.w700)),
    );
  }
}*/

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/signup.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../configs/routes.dart';

// ✅ Dark blue primary color
const Color primaryColor = Color(0xFF0D47A1);

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

  final String serverUrl =
      "http://10.147.116.185/habit_api/login.php"; // your IP and endpoint

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

              _buildLabel("Enter username"),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: "Enter username",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              _buildLabel("Enter email"),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Use email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              _buildLabel("Enter Password"),
              TextField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () =>
                        setState(() => isPasswordVisible = !isPasswordVisible),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              /// 🔥 REAL LOGIN BUTTON (CONNECTED TO DATABASE)
              GestureDetector(
                onTap: () async {
                  String fullname = fullnameController.text.trim();
                  String email = emailController.text.trim();
                  String pass = passwordController.text.trim();

                  if (fullname.isEmpty || email.isEmpty || pass.isEmpty) {
                    Get.snackbar("Error", "Please fill all fields");
                    return;
                  }

                  try {
                    var response = await http.post(
                      Uri.parse("http://192.168.100.115/habit_api/login.php"),
                      body: {
                        'fullname': fullnameController.text.trim(),
                        'email': emailController.text.trim(),
                        'password': passwordController.text.trim(),
                      },
                    );

                    var data = json.decode(response.body);

                    if (data["success"] == 1) {
                      int userId = data["user_id"];

                      print("USER ID: $userId");

                      Get.snackbar("Success", "Login successful");

                      Get.offAllNamed(AppRoutes.homescreen);
                    } else {
                      Get.snackbar("Login Failed", "Invalid email or password");
                    }
                  } catch (e) {
                    Get.snackbar("Error", "Server not reachable");
                    print(e);
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
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () => Get.toNamed(AppRoutes.signup),
                    child: Text(
                      "Signup",
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

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(text, style: const TextStyle(fontWeight: FontWeight.w700)),
    );
  }
}
