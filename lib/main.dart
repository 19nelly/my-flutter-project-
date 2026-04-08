// ignore_for_file: unused_import

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/routes.dart'; // Make sure this file exports a 'routes' variable of type List<GetPage>
import 'package:flutter_application_1/views/login.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';*/

/*void main() {
  runApp(
    GetMaterialApp(
      initialRoute: "/",
      getPages: routes, // 'routes' must be defined and exported from configs/routes.dart

      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}*/

/*import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';*/

/*void main() {
  runApp(
    GetMaterialApp(
      initialRoute: "/login",  // Changed from "/" to "/login"
      getPages: routes,
      debugShowCheckedModeBanner: false,
      // Removed 'home' property since we're using named routes
    ),
  );
}*/

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/routes.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/configs/colors.dart';

void main() {
  List<GetPage<dynamic>>? routes;
  runApp(
    GetMaterialApp(
      initialRoute: "/login",
      getPages: routes, // Assuming AppRoutes has a static 'routes' variable
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryBlue,
        scaffoldBackgroundColor: AppColors.backgroundBlue,
        appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryBlue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    ),
  );
}
