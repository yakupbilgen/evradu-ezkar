import 'package:evraduezkar/constant/app_constant.dart';
import 'package:flutter/material.dart';

import 'screen/homepage_screen_list.dart';
import 'screen/kucuk_cevsen/kucuk_cevsen_homepage.dart';

void main() {
  runApp(const MyApp());
}

//TODO:Resim yakınlaştırmaya bak!

//TODO:Sekine Duası türkçesi olsun

//TODO: Backcgroun color mainde theme scaffold color olarak verilsin.

//TODO:background color ları kaldır.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppConstant.bgColor,
        primarySwatch: Colors.orange,
      ),
      home: const HomepageScreenList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
