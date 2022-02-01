import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/celcelutiye/celcelutiye_constant.dart';
import 'package:evraduezkar/screen/celcelutiye/celcelutiye_arabic.dart';
import 'package:evraduezkar/screen/celcelutiye/celcelutiye_turkish.dart';
import 'package:evraduezkar/widget/widgets.dart';
import 'package:flutter/material.dart';

import 'celcelutiye_faydalari.dart';

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
