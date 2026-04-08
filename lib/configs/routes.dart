/*import 'package:flutter_application_1/views/login.dart';
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
];*/

// configs/routes.dart
/*import 'package:get/get.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/signup.dart';
import 'package:flutter_application_1/views/homescreen.dart';
import 'package:flutter_application_1/views/habits.dart';
import 'package:flutter_application_1/views/tasks.dart';
import 'package:flutter_application_1/views/profile.dart';
import 'package:flutter_application_1/views/timerpage.dart';
import 'package:flutter_application_1/views/statistics.dart';

List<GetPage> routes = [
  GetPage(name: '/login', page: () => LoginScreen()),
  GetPage(name: '/signup', page: () => SignupScreen()),
  GetPage(name: '/dashboard', page: () => Homescreen()),
  GetPage(name: '/homescreen', page: () => Homescreen()), // Alternative name
  GetPage(name: '/habits', page: () => HabitsPage()),
  GetPage(name: '/tasks', page: () => TasksPage()),
  GetPage(name: '/profile', page: () => ProfilePage()),
  GetPage(name: '/timer', page: () => TimerPage()),
  GetPage(name: '/stats', page: () => StatisticsScreen()),
];*/

import 'package:get/get.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/signup.dart';
import 'package:flutter_application_1/views/homescreen.dart';
import 'package:flutter_application_1/views/habits.dart';
import 'package:flutter_application_1/views/tasks.dart';
import 'package:flutter_application_1/views/profile.dart';
import 'package:flutter_application_1/views/timerpage.dart';
import 'package:flutter_application_1/views/statistics.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String dashboard = '/dashboard';
  static const String homescreen = '/homescreen';
  static const String habits = '/habits';
  static const String tasks = '/tasks';
  static const String profile = '/profile';
  static const String timer = '/timer';
  static const String stats = '/stats';

  static final routes = [
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: signup, page: () => SignupScreen()),
    GetPage(name: dashboard, page: () => Homescreen()),
    GetPage(name: homescreen, page: () => Homescreen()), // alias
    GetPage(name: habits, page: () => HabitsPage()),
    GetPage(name: tasks, page: () => TasksPage()),
    GetPage(name: profile, page: () => ProfilePage()),
    GetPage(name: timer, page: () => TimerPage()),
    GetPage(name: stats, page: () => StatisticsScreen()),
  ];
}
