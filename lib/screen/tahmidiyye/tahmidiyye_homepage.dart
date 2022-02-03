import 'package:flutter/material.dart';

import 'tahmidiyye_arabic.dart';
import 'tahmidiyye_faydalari.dart';
import 'tahmidiyye_turkish.dart';
import '../../constant/app_constant.dart';
import '../../constant/tahmidiyye/tahmidiyye_constant.dart';
import '../../widget/widgets.dart';

class TahmidiyyeHomePage extends StatefulWidget {
  const TahmidiyyeHomePage({Key? key}) : super(key: key);

  @override
  State<TahmidiyyeHomePage> createState() => _TahmidiyyeHomePageState();
}

class _TahmidiyyeHomePageState extends State<TahmidiyyeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, TahmidiyyeConstant.appBarTitle, true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customListTile(context, TahmidiyyeConstant.titleArabic,
              TahmidiyyeConstant.subTitleTextArabic, const TahmidiyyeArabic()),
          customListTile(
              context,
              TahmidiyyeConstant.titleTurkish,
              TahmidiyyeConstant.subTitleTextTurkish,
              const TahmidiyyeTurkish()),
          customListTile(
              context,
              TahmidiyyeConstant.textFaydalari,
              TahmidiyyeConstant.subTitleFaydalari,
              const TahmidiyyeFaydalari()),
          appConstantDivider(),
        ],
      ),
    );
  }
}
