import 'package:flutter/material.dart';

import 'screen/homepage_screen_list.dart';

void main() {
  runApp(const MyApp());
}
//TODO:AppBar ekle
//TODO: AppBar'da geçerli sayfanın indexi olsun.
//TODO: Resimler büyütülebilsin.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomepageScreenList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
