import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/screen/gunluk_vird/gunluk_vird_homepage.dart';
import 'package:evraduezkar/screen/sekine/sekine_homepage.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_homepage.dart';
import 'package:evraduezkar/widget/widgets.dart';
import 'package:flutter/material.dart';

import 'celcelutiye/celcelutiye_homepage.dart';
import 'kucuk_cevsen/kucuk_cevsen_homepage.dart';

class HomepageScreenList extends StatelessWidget {
  const HomepageScreenList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, AppConstant.appBarTitle),
      backgroundColor: AppConstant.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customListTile(
            context,
            AppConstant.screenListKucukCevsen,
            '',
            const KucukCevsenHomepage(),
          ),
          customListTile(
            context,
            AppConstant.screenListTahmidiyye,
            '',
            const TahmidiyyeHomePage(),
          ),
          customListTile(
            context,
            AppConstant.screenListCelcelutiye,
            '',
            const CelcelutiyeHomepage(),
          ),
          customListTile(
            context,
            AppConstant.screenListSekineDuasi,
            '',
            const SekineHomePage(),
          ),
          customListTile(
            context,
            AppConstant.screenListGunlukVird,
            '',
            const GunlukVirdHomepage(),
          ),
          appConstantDivider(),
        ],
      ),
    );
  }
}
