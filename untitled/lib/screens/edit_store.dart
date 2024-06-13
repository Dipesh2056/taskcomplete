import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:untitled/widgets/image.dart';
import 'package:untitled/widgets/text_field.dart';
import 'package:untitled/widgets/timeframe.dart';

class EditStore extends StatefulWidget {
  const EditStore({super.key});

  @override
  State<EditStore> createState() => _EditStoreState();
}

class _EditStoreState extends State<EditStore> {
  bool _hasSmoking = true;
  bool _noSmoking = false;
  bool _hasParking = true;
  bool _noParking = false;
  bool _hasPresent = true;
  bool _noPresent = false;

  void _onPresentChanged(bool? value) {
    setState(() {
      _hasPresent = value!;
      if (_hasPresent) _noPresent = false;
    });
  }

  void _onNoPresentChanged(bool? value) {
    setState(() {
      _noPresent = value!;
      if (_noPresent) _hasPresent = false;
    });
  }

  void _onParkingChanged(bool? value) {
    setState(() {
      _hasParking = value!;
      if (_hasParking) _noParking = false;
    });
  }

  void _onNoParkingChanged(bool? value) {
    setState(() {
      _noParking = value!;
      if (_noParking) _hasParking = false;
    });
  }

  void _onSmokingChanged(bool? value) {
    setState(() {
      _hasSmoking = value!;
      if (_hasSmoking) _noSmoking = false;
    });
  }

  void _onNoSmokingChanged(bool? value) {
    setState(() {
      _noSmoking = value!;
      if (_noSmoking) _hasSmoking = false;
    });
  }

  Map<String, bool> _days = {
    '月': false,
    '火': false,
    '水': false,
    '木': false,
    '金': false,
    '土': true,
    '日': true,
    '祝': true,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 19.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chevron_left,
                  ),
                  Text(
                    "店舗プロフィール編集",
                  ),
                  Icon(Icons.notification_add_rounded),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(title: '店舗名*', text: 'Mer キッチン'),
              TextFieldWidget(title: '代表担当者名*', text: '林田　絵梨花'),
              TextFieldWidget(title: '店舗電話番号*', text: '123 - 4567 8910'),
              TextFieldWidget(title: '店舗住所*', text: '大分県豊後高田市払田791-13'),
              Image(
                  image: AssetImage(
                'assets/map.png',
              )),
              ImageWidget(
                  imageone: 'Input', imagethree: 'Input', imagetwo: 'Input'),
              SizedBox(
                height: 10.h,
              ),
              ImageWidget(
                  imagetwo: 'Input1', imagethree: 'Input1', imageone: 'Input1'),
              SizedBox(
                height: 10.h,
              ),
              ImageWidget(
                imageone: 'Input2',
                imagethree: 'Input3',
                imagetwo: 'Input4',
              ),
              SizedBox(
                height: 10.h,
              ),
              TimeFrame(
                time1: '10 : 00',
                time2: '20 : 00',
                title: '営業時間*',
              ),
              SizedBox(
                height: 16.h,
              ),
              TimeFrame(
                time1: '11 : 00',
                time2: '15 : 00',
                title: 'ランチ時間*',
              ),
              Text(
                '定休日',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: _days.keys.map((String key) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        activeColor: Colors.deepOrange,
                        value: _days[key],
                        onChanged: (bool? value) {
                          setState(() {
                            _days[key] = value!;
                          });
                        },
                      ),
                      Text(key),
                    ],
                  );
                }).toList(),
              ),
              SizedBox(height: 10.h),
              TimeFrame(
                time1: '¥ 1,000',
                time2: '¥ 2,000',
                title: '予算*',
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(title: 'キャッチコピー*', text: '美味しい！リーズナブルなオムライスランチ！'),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(title: '座席数*', text: '40席'),
              Text(
                '喫煙席',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Checkbox(
                    value: _hasSmoking,
                    onChanged: _onSmokingChanged,
                    activeColor: Colors.deepOrange,
                  ),
                  Text('有'),
                  SizedBox(width: 20.w),
                  Checkbox(
                    value: _noSmoking,
                    onChanged: _onNoSmokingChanged,
                    activeColor: Colors.deepOrange,
                  ),
                  Text('無'),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '駐車場',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Checkbox(
                    value: _hasParking,
                    onChanged: _onParkingChanged,
                    activeColor: Colors.deepOrange,
                  ),
                  Text('有'),
                  SizedBox(width: 20.w),
                  Checkbox(
                    value: _noParking,
                    onChanged: _onNoParkingChanged,
                    activeColor: Colors.deepOrange,
                  ),
                  Text('無'),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '来店プレゼント',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _hasPresent,
                    onChanged: _onPresentChanged,
                    activeColor: Colors.deepOrange,
                  ),
                  Text('有 （最大３枚まで）'),
                  SizedBox(width: 20.w),
                  Checkbox(
                    value: _noPresent,
                    onChanged: _onNoPresentChanged,
                    activeColor: Colors.deepOrange,
                  ),
                  Text('無'),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              TextFieldWidget(title: '来店プレゼント名*', text: 'いちごクリームアイスクリーム, ジュース')
            ],
          ),
        ),
      ),
    );
  }
}
