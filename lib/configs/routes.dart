import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/signup.dart';
import 'package:flutter_application_1/views/homescreen.dart';
import 'package:get/get.dart';
import '../views/tasks.dart';
import '../views/habits.dart';
import '../views/profile.dart';

var routes = [
  GetPage(name: "/", page: () => LoginScreen()),
  GetPage(name: "/signup", page: () => SignupScreen()),
  GetPage(name: "/homescreen", page: () => Homescreen()),
];

final additionalRoutes = [
  GetPage(name: "/tasks", page: () => const TasksPage()),
  GetPage(name: "/habits", page: () => const HabitsPage()),
  GetPage(name: "/profile", page: () => const ProfilePage()),
];
