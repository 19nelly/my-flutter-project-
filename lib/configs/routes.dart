import 'package:get/get.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/signup.dart';
import 'package:flutter_application_1/views/homescreen.dart';
import 'package:flutter_application_1/views/dashboard.dart';
import 'package:flutter_application_1/views/habits.dart';
import 'package:flutter_application_1/views/stats.dart';
import 'package:flutter_application_1/views/profile.dart';
import 'package:flutter_application_1/views/timerpage.dart';

class AppRoutes {
  static const String login = '/login';
  static const String signup = '/signup';
  static const String homescreen = '/homescreen';
  static const String dashboard = '/dashboard';
  static const String habits = '/habits';
  static const String stats = '/stats';
  static const String profile = '/profile';
  static const String timer = '/timer';

  static final routes = [
    GetPage(name: login, page: () => const LoginScreen()),
    // If your login screen class is named 'LoginPage', use 'LoginPage' instead of 'LoginScreen'.
    // Otherwise, ensure the class name matches the one defined in 'login.dart'.
    GetPage(name: signup, page: () => const SignupScreen()),
    GetPage(name: homescreen, page: () => const Homescreen()),
    GetPage(name: dashboard, page: () => const DashboardPage()),
    GetPage(name: habits, page: () => const HabitsPage()),
    GetPage(name: stats, page: () => const StatsPage()),
    GetPage(name: profile, page: () => const ProfilePage()),
    GetPage(name: timer, page: () => const TimerPage()),
  ];
}
