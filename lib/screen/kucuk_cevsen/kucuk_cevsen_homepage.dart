import 'package:evraduezkar/constant/kucuk_cevsen/kucuk_cevsen_constant.dart';
import 'package:evraduezkar/screen/kucuk_cevsen/kucuk_cevsen_bablist_screen.dart';
import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../widget/widgets.dart';

class KucukCevsenHomePage extends StatefulWidget {
  const KucukCevsenHomePage({Key? key}) : super(key: key);

  @override
  State<KucukCevsenHomePage> createState() => KucukCevsenHomePageState();
}

class KucukCevsenHomePageState extends State<KucukCevsenHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, KucukCevsenConstant.appBarTitleHomepage, true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customListTile(
              context,
              KucukCevsenConstant.kucukCevsenNormal,
              KucukCevsenConstant.subTitleTextNormal,
              const KucukCevsenBabListScreen(
                cevsenContent: KucukCevsenConstant.babList,
                appBarTitle: KucukCevsenConstant.appBarTitleKucukCevsen,
              )),
          customListTile(
              context,
              KucukCevsenConstant.kucukCevsenMeal,
              KucukCevsenConstant.subTitleTextMeal,
              const KucukCevsenBabListScreen(
                cevsenContent: KucukCevsenConstant.babMeal,
                appBarTitle: KucukCevsenConstant.appBarTitleKucukCevsenMeal,
              )),
          appConstantDivider(),
          ExpansionTile(
            title: Center(
              child: Text(
                'Text Size',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            children: [setTextSize(context)],
            initiallyExpanded: true,
          ),
        ],
      ),
    );
  }

  Column setTextSize(BuildContext context) {
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
