import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/screens/edit_store.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/job_screen.dart';
import 'package:untitled/screens/stamp_details_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(430, 932),

        builder: (_, child) {
          return
            GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              initialRoute: '/',
              getPages: [
                GetPage(name: '/', page: () => HomeScreen()),
                GetPage(name: '/job_screen', page: () => JobScreen()),
                GetPage(name: '/edit_store', page: () => EditStore()),
                GetPage(name: '/stamp_details', page: () => StampDetailsScreen()),

              ],
            );
        });}
}
