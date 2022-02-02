import 'package:flutter/material.dart';

import 'celcelutiye_arabic.dart';
import 'celcelutiye_turkish.dart';
import 'celcelutiye_faydalari.dart';
import '../../constant/app_constant.dart';
import '../../constant/celcelutiye/celcelutiye_constant.dart';
import '../../widget/widgets.dart';

class CelcelutiyeHomepage extends StatefulWidget {
  const CelcelutiyeHomepage({Key? key}) : super(key: key);

  @override
  _CelcelutiyeHomepageState createState() => _CelcelutiyeHomepageState();
}

class _CelcelutiyeHomepageState extends State<CelcelutiyeHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, CelcelutiyeConstant.appBarTitle),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customListTile(context, CelcelutiyeConstant.textArabic,
              CelcelutiyeConstant.subTitleArabic, const CelcelutiyeArabic()),
          customListTile(context, CelcelutiyeConstant.textTurkish,
              CelcelutiyeConstant.subTitleTurkish, const CelcelutiyeTurkish()),
          customListTile(
              context,
              CelcelutiyeConstant.textFaydalari,
              CelcelutiyeConstant.subTitleFaydalari,
              const CelcelutiyeFaydalari()),
          appConstantDivider(),
        ],
      ),
    );
  }
}
