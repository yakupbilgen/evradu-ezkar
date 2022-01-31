import 'package:flutter/material.dart';

import 'screen/homepage_screen_list.dart';
import 'screen/kucuk_cevsen/kucuk_cevsen_homepage.dart';

void main() {
  runApp(const MyApp());
}

//TODO:Resim yakınlaştırmaya bak!

//TODO:Sekine Duası türkçesi olsun

//TODO:Küçük Çevşen Liste ekranı appbar düzenle
//TODO:Küçük Çevşen okuma ekranında bab kaldır, appbar a ekle
//TODO:Küçük Çevşen appbar da index olsun

//TODO: Backcgroun color mainde theme scaffold color olarak verilsin.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const KucukCevsenHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
