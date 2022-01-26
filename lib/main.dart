import 'package:flutter/material.dart';

import 'screen/homepage_screen_list.dart';

void main() {
  runApp(const MyApp());
}

//TODO:Resim yakınlaştırmaya bak!

//TODO:Sekine Duası türkçesi olsun

//TODO:Celcelutiye appbar düzenle
//TODO:Celcelutiye appbar da index olsun
//TODO:Celcelutiye türkçesi olsun

//TODO:Tahmidiyye homepage screen appbar düzenle
//TODO:Tahmidiyye read screen için appbar düzenle
//TODO:Tahmidiyye appbar da index olsun

//TODO:Küçük Çevşen Liste ekranı appbar düzenle
//TODO:Küçük Çevşen okuma ekranında bab kaldır, appbar a ekle
//TODO:Küçük Çevşen appbar da index olsun

//TODO:

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
