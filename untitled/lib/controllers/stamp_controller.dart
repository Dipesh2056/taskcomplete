import 'package:get/get.dart';

class StampController extends GetxController {
  var stamps = List<bool>.filled(30, true).obs; // Assuming 30 stamps, all initially true (checked)
  var totalStamps = 30.obs;

  var stampHistory = [
    StampHistory(date: '2021 / 11 / 18', jobName: 'スタンプを獲得しました。', count: 1),
    StampHistory(date: '2021 / 11 / 17', jobName: 'スタンプを獲得しました。', count: 1),
    StampHistory(date: '2021 / 11 / 16', jobName: 'スタンプを獲得しました。', count: 1),
    StampHistory(date: '2021 / 11 / 15', jobName: 'スタンプを獲得しました。', count: 1),
    StampHistory(date: '2021 / 11 / 14', jobName: '店舗プロフィール編集', count: 1),
    StampHistory(date: '2021 / 11 / 13', jobName: 'ール編集', count: 1),

  ];
}

class StampHistory {
  final String date;
  final String jobName;
  final int count;

  StampHistory({
    required this.date,
    required this.jobName,
    required this.count
  });
}
