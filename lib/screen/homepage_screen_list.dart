import 'package:flutter/material.dart';
import 'kucuk_cevsen/kucuk_cevsen_homepage.dart';
import 'tahmidiyye/tahmidiyye_homepage.dart';
import 'celcelutiye/celcelutiye_homepage.dart';
import 'sekine/sekine_homepage.dart';
import 'gunluk_vird/gunluk_vird_homepage.dart';
import '../constant/app_constant.dart';
import '../widget/widgets.dart';

class HomepageScreenList extends StatefulWidget {
  const HomepageScreenList({Key? key}) : super(key: key);

  @override
  State<HomepageScreenList> createState() => _HomepageScreenListState();
}

double textSize = AppConstant.defaultTextSize;

class _HomepageScreenListState extends State<HomepageScreenList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, AppConstant.appBarTitle, false),
      backgroundColor: AppConstant.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customListTile(
            context,
            AppConstant.screenList[0],
            '',
            const KucukCevsenHomePage(),
          ),
          customListTile(
            context,
            AppConstant.screenList[1],
            '',
            const TahmidiyyeHomePage(),
          ),
          customListTile(
            context,
            AppConstant.screenList[2],
            '',
            const CelcelutiyeHomepage(),
          ),
          customListTile(
            context,
            AppConstant.screenList[3],
            '',
            const SekineHomePage(),
          ),
          customListTile(
            context,
            AppConstant.screenList[4],
            '',
            const GunlukVirdHomepage(),
          ),
          appConstantDivider(),
        ],
      ),
    );
  }
}
