/*import 'package:get/get.dart';

class LoginController extends GetxController {
  var username;
  var password;
  var isPasswordVisible = false.obs;
  login(user, pass) {
    username = user;
    password = pass;
    if (username == "admin" && password == "12345") {
      return true;
    } else {
      return false;
    }
  }
  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}*/

/*import 'package:get/get.dart';

class LoginController extends GetxController {
  // Password visibility
  var isPasswordVisible = false.obs;

  // Login function
  bool login(String user, String pass) {
    String username = user.trim();
    String password = pass.trim();

    print("Username entered: $username");
    print("Password entered: $password");

    if (username == "admin" && password == "12345") {
      print("LOGIN SUCCESS");
      return true;
    } else {
      print("LOGIN FAILED");
      return false;
    }
  }

  // Toggle password visibility
  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }
}*/

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  var isPasswordVisible = false.obs;

  /*// 🔥 REAL LOGIN FUNCTION
  Future<bool> login(String email, String password) async {
    var url = Uri.parse("http://10.7.18.30/habit_api/login.php");

    var response = await http.post(
      url,
      body: {"email": email, "password": password},
    );

    var data = json.decode(response.body);

    if (data["success"] == 1) {
      print("LOGIN SUCCESS FROM DATABASE");
      return true;
    } else {
      print("LOGIN FAILED FROM DATABASE");
      return false;
    }
  }

  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }*/

  // REAL LOGIN FUNCTION
  Future<bool> login(String email, String password) async {
    var url = Uri.parse(
      "http://192.168.100.113/habit_api/login.php",
    ); // your IP

    var response = await http.post(
      url,
      body: {"email": email, "password": password},
    );

    print("RESPONSE: ${response.body}");

    var data = json.decode(response.body);

    if (data["success"] == 1) {
      return true;
    } else {
      return false;
    }
  }

  void togglePassword() {}
}
