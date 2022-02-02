import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_arabic.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_faydalari.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_turkish.dart';
import 'package:evraduezkar/widget/widgets.dart';
import 'package:flutter/material.dart';

class TahmidiyyeHomePage extends StatefulWidget {
  const TahmidiyyeHomePage({Key? key}) : super(key: key);

  @override
  State<TahmidiyyeHomePage> createState() => _TahmidiyyeHomePageState();
}

class _TahmidiyyeHomePageState extends State<TahmidiyyeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, TahmidiyyeConstant.appBarTitle),
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
