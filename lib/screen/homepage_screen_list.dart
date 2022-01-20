import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/screen/sekine/sekine_homepage.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_homepage.dart';
import 'package:flutter/material.dart';

import 'celcelutiye/celcelutiye_homepage.dart';
import 'haftalik_vird/haftalik_vird_homepage.dart';
import 'kucuk_cevsen/kucuk_cevsen_homepage.dart';

class HomepageScreenList extends StatelessWidget {
  const HomepageScreenList({Key? key}) : super(key: key);

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
        leading: const Icon(Icons.spa,
            size: AppConstant.iconSize, color: Colors.red),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_right,
            size: AppConstant.iconSize, color: Colors.red),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigatorFunc));
        },
      ),
      const Divider(color: Colors.blue),
    ],
  );
}
