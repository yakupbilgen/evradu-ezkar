import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/screen/celcelutiye/celcelutiye_homepage.dart';
import 'package:evraduezkar/screen/haftalik_vird/haftalik_vird_homepage.dart';
import 'package:evraduezkar/screen/kucuk_cevsen/kucuk_cevsen_homepage.dart';
import 'package:evraduezkar/screen/sekine/sekine_homepage.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const ScreenListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScreenListPage extends StatelessWidget {
  const ScreenListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEE7D4),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            listTileItem(
              context,
              AppConstant.screenListKucukCevsen,
              const KucukCevsenHomepage(),
            ),
            listTileItem(
              context,
              AppConstant.screenListTahmidiyye,
              const TahmidiyyeHomePage(),
            ),
            listTileItem(
              context,
              AppConstant.screenListCelcelutiye,
              const CelcelutiyeHomepage(),
            ),
            listTileItem(
              context,
              AppConstant.screenListSekineDuasi,
              const SekineHomePage(),
            ),
            listTileItem(
              context,
              AppConstant.screenListHastalikVird,
              const HaftalikVirdHomepage(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget listTileItem(
    BuildContext context, String title, StatefulWidget navigatorFunc) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ListTile(
        leading: const Icon(Icons.spa),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_right, size: 40, color: Colors.black),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigatorFunc));
        },
      ),
      const Divider(color: Colors.blue),
    ],
  );
}
