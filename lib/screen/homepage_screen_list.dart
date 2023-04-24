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
            const KucukCevsenHomepage(),
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
          arrangeTextSize(context),
        ],
      ),
    );
  }

  Column arrangeTextSize(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                if (AppConstant.defaultTextSize < 99) {
                  AppConstant.defaultTextSize++;
                  setState(() {});
                }
              },
              icon: const Icon(
                Icons.add,
                size: AppConstant.iconSize,
                color: AppConstant.iconColor,
              ),
            ),
            const VerticalDivider(),
            Text(
              AppConstant.defaultTextSize.toInt().toString(),
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: AppConstant.defaultTextSize),
            ),
            const VerticalDivider(),
            IconButton(
              onPressed: () {
                if (AppConstant.defaultTextSize > 5) {
                  AppConstant.defaultTextSize--;
                  setState(() {});
                }
              },
              icon: const Icon(
                Icons.remove,
                size: AppConstant.iconSize,
                color: AppConstant.iconColor,
              ),
            ),
          ],
        ),
        Text("Sample text!",
            style: TextStyle(fontSize: AppConstant.defaultTextSize))
      ],
    );
  }
}
