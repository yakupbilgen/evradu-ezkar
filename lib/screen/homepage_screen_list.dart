import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/screen/gunluk_vird/gunluk_vird_homepage.dart';
import 'package:evraduezkar/screen/sekine/sekine_homepage.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_homepage.dart';
import 'package:flutter/material.dart';

import 'celcelutiye/celcelutiye_homepage.dart';
import 'kucuk_cevsen/kucuk_cevsen_homepage.dart';

class HomepageScreenList extends StatelessWidget {
  const HomepageScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, AppConstant.appBarTitle),
      backgroundColor: const Color(0xFFEEE7D4),
      body: Column(
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
            AppConstant.screenListGunlukVird,
            const GunlukVirdHomepage(),
          ),
          appConstantDivider(),
        ],
      ),
    );
  }
}

//TODO: bu widget celcelutiye ve tahmidiyye homepage için kullanılacak.
Widget listTileItem(
    BuildContext context, String title, StatefulWidget navigatorFunc) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      appConstantDivider(),
      ListTile(
        leading: const Icon(
          Icons.spa,
          size: AppConstant.iconSize,
          color: AppConstant.iconColor,
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(
          Icons.arrow_right,
          size: AppConstant.iconSize,
          color: AppConstant.iconColor,
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navigatorFunc));
        },
      ),
    ],
  );
}
