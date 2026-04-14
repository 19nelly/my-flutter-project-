// ignore_for_file: avoid_print

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

/*import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'

class LoginController extends GetxController {
  var isPasswordVisible = false.obs;*/

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
/*Future<bool> login(String email, String password) async {
    var url = Uri.parse(
      "http://192.168.100.108:80/habit_api/login.php",
    ); // your IP

    var response = await http.post(
      url,
      body: {"email": email, "password": password},
    );

    // ignore: avoid_print
    print("RESPONSE: ${response.body}");

    var data = json.decode(response.body);

    if (data["success"] == 1) {
      return true;
    } else {
      return false;
    }
  }

  void togglePassword() {}
}*/

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginController extends GetxController {
  var isPasswordVisible = false.obs;

  final String serverUrl = "http://192.168.100.114/habit_api";

  void togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  Future<bool> login(String email, String password) async {
    try {
      final url = Uri.parse("$serverUrl/login.php");
      final response = await http.post(
        url,
        body: {"email": email, "password": password},
      );

      final data = json.decode(response.body);

      if (data["success"] == 1) {
        // Optionally save user info, e.g., user ID
        // GetStorage().write('user_id', data['user_id']);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("Login error: $e");
      return false;
    }
  }
}
