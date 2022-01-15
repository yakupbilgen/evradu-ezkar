import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/screen/celcelutiye/celcelutiye_homepage.dart';
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
            ListTileItem(
                AppConstant.screenListKucukCevsen, const CelcelutiyeHomepage()),
            screenListPageDivider(),
            ListTileItem(
                AppConstant.screenListTahmidiyye, const TahmidiyyeHomePage()),
            screenListPageDivider(),
            ListTileItem(
                AppConstant.screenListCelcelutiye, const CelcelutiyeHomepage()),
            screenListPageDivider(),
            ListTileItem(
                AppConstant.screenListSekineDuasi, const SekineHomePage()),
            screenListPageDivider(),
            ListTileItem(AppConstant.screenListHastalikVird,
                const CelcelutiyeHomepage()),
            screenListPageDivider(),
          ],
        ),
      ),
    );
  }
}

class ListTileItem extends StatelessWidget {
  String title;
  StatefulWidget navigatorFunc;
  ListTileItem(this.title, this.navigatorFunc, {Key? key}) : super(key: key);

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
//TO DO: Tahmidiyye = Complete
//TO DO: Celcelutiye = Complete
//TO DO: Sekine Duası = Complete
//TO DO: Haftalık Vird = Not complete