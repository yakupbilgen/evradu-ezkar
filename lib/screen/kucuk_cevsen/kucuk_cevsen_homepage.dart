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
                  cevsenContent: KucukCevsenConstant.babList)),
          customListTile(
              context,
              KucukCevsenConstant.kucukCevsenMeal,
              KucukCevsenConstant.subTitleTextMeal,
              const KucukCevsenBabListScreen(
                  cevsenContent: KucukCevsenConstant.babMeal)),
          appConstantDivider(),
        ],
      ),
    );
  }
}
