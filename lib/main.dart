import 'package:flutter/material.dart';

import 'constant/app_constant.dart';
import 'screen/homepage_screen_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppConstant.bgColor,
        useMaterial3: true,
      ),
      home: const HomepageScreenList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
