import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:untitled/controllers/job_controller.dart';
import 'package:untitled/screens/stamp_details_screen.dart';
import 'package:untitled/widgets/card.dart';
import 'package:untitled/widgets/card2.dart';

class JobScreen extends StatefulWidget {
   JobScreen({Key? key});



  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  final JobController controller = Get.put(JobController());


  int selectedIndex = -1; // Initially no card is selected
  final List<String> data = ['木','金','土','日','月','火'];
  final List<String> date = ['26','27','28','29','30', '31'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.h), // For status bar height adjustment
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40.h, // Adjust height of the search bar
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.symmetric(vertical: 8.h),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Icon(Icons.edit_note_rounded, color: Colors.grey),
                  SizedBox(width: 10.w),
                  Icon(Icons.favorite_border, color: Colors.red),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFAAA14),  // Hex color FAAA14
                    Color(0xFFFFD78D),  // Hex color FFD78D
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '2022年5月26日 (木)',
                    style: TextStyle(color: Colors.black, fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (int i = 0; i < 5; i++)
                    Card1(
                      key: UniqueKey(), // Ensure each Card1 has a unique key
                      isSelected: selectedIndex == i,
                      date : date[i],
                      data: data[i],
                      onTap: () {
                        setState(() {
                          selectedIndex = i;
                        });
                      },
                    ),
                ],
              ),
            ),
            Card2(),
            SizedBox(height: 30.h,),
            Card2(),


          ],
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 30.sp),
          label: 'さがす',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list, size: 30.sp),
          label: 'お仕事',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 60.w,
            height: 60.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/icon_3.png', width: 60.w, height: 60.h),
                Image.asset('assets/scan-line.png', width: 25.w, height: 25.h),
              ],
            ),
          ),
          label: '打刻する',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat, size: 30.sp),
          label: 'チャット',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 30.sp),
          label: 'マイページ',
        ),
      ],
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if (index == 2) {
          Get.to(StampDetailsScreen());
        }
      },
    ),



    floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          print('Floating Action Button Pressed');
        },
        child: Icon(Icons.location_on_outlined, color: Colors.black),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );

  }
}
