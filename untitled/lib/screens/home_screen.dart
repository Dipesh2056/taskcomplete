import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/job_screen'); // Navigate to JobScreen
              },
              child: Text('Home'),
            ),
            SizedBox(height: 20.h), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/edit_store'); // Navigate to EditStore
              },
              child: Text('Edit Store'),
            ),
            SizedBox(height: 20.h), // Add spacing between buttons
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/stamp_details'); // Navigate to EditStore
              },
              child: Text('Stamp Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
