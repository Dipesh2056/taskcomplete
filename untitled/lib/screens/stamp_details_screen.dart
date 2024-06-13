import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/controllers/stamp_controller.dart';

class StampDetailsScreen extends StatefulWidget {
  @override
  _StampDetailsScreenState createState() => _StampDetailsScreenState();
}

class _StampDetailsScreenState extends State<StampDetailsScreen> {
  final StampController controller = Get.put(StampController());
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('スタンプカード詳細', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFA8B1FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Color(0xFF707DF1),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/minus-circle.png'),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFA8B1FF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mer キッチン',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                  Spacer(),
                  Text(
                    '現在の獲得数',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                  SizedBox(width: 10),
                  Obx(() => Text(
                    '${controller.totalStamps}',
                    style: TextStyle(color: Colors.white, fontSize: 24.sp),
                  )),
                  Text(
                    '個',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0.r),
                  topRight: Radius.circular(30.0.r),
                ),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25.h),
                      Container(
                        height: 200,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: 2, // Number of stamp grids
                          onPageChanged: (index) {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                          itemBuilder: (context, index) {
                            return _buildStampGrid(context, index);
                          },
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '${_currentPage + 1} / 2枚目',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'スタンプ獲得履歴',
                        style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.h),
                      Expanded(
                        child: ListView.builder(
                          itemCount: controller.stampHistory.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                ListTile(
                                  title: Text(controller.stampHistory[index].date),
                                  subtitle: Text(controller.stampHistory[index].jobName),
                                  trailing: Text('${controller.stampHistory[index].count}個'),
                                ),
                                Divider(), // Add Divider between items
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStampGrid(BuildContext context, int index) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 200.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 10.0,
            ),
            itemCount: 15,
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/Star 1.png', width: 50.w, height: 50.h),
                  Icon(Icons.check, color: Colors.white, size: 30.sp),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
