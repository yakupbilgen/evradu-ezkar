import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/screen/celcelutiye/celcelutiye_homepage.dart';
import 'package:evraduezkar/screen/haftalik_vird/haftalik_vird_homepage.dart';
import 'package:evraduezkar/screen/sekine/sekine_homepage.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_homepage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            screenListPageDivider(),
            const ListTileItem(
                AppConstant.screenListKucukCevsen, CelcelutiyeHomepage()),
            screenListPageDivider(),
            const ListTileItem(
                AppConstant.screenListTahmidiyye, TahmidiyyeHomePage()),
            screenListPageDivider(),
            const ListTileItem(
                AppConstant.screenListCelcelutiye, CelcelutiyeHomepage()),
            screenListPageDivider(),
            const ListTileItem(
                AppConstant.screenListSekineDuasi, SekineHomePage()),
            screenListPageDivider(),
            const ListTileItem(
                AppConstant.screenListHastalikVird, HaftalikVirdHomepage()),
            screenListPageDivider(),
          ],
        ),
      ),
    );
  }
}

class ListTileItem extends StatelessWidget {
  final String title;
  final StatefulWidget navigatorFunc;
  const ListTileItem(this.title, this.navigatorFunc, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(FontAwesomeIcons.spa),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        Icons.arrow_right,
        size: 40,
        color: Colors.black,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigatorFunc,
          ),
        );
      },
    );
  }
}

Divider screenListPageDivider() {
  return const Divider(color: Colors.blue);
}
//TO DO: Küçük çevşen = Not complete
//TO DO: Haftalık Vird = Not complete
//TO DO: Tahmidiyye = Complete
//TO DO: Celcelutiye = Complete
//TO DO: Sekine Duası = Complete