import 'package:flutter/material.dart';

import 'constant/app_constant.dart';
import 'screen/homepage_screen_list.dart';

void main() {
  runApp(const MyApp());
}

//TODO:Resim yakınlaştırmaya bak!
//TODO:Sekine Duası türkçesi olsun

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
