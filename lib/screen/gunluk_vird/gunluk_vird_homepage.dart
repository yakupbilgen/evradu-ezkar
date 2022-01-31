import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/gunluk_vird/gunluk_vird_constant.dart';
import 'package:flutter/material.dart';

import 'gunluk_vird_count_screen.dart';

class GunlukVirdHomepage extends StatefulWidget {
  const GunlukVirdHomepage({Key? key}) : super(key: key);

  @override
  _GunlukVirdHomepageState createState() => _GunlukVirdHomepageState();
}

class _GunlukVirdHomepageState extends State<GunlukVirdHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, GunlukVirdConstant.appBarTitle),
      backgroundColor: AppConstant.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildListItem(
            GunlukVirdConstant.monday,
            GunlukVirdListConstant.mondayCount,
            GunlukVirdListConstant.mondayArabic,
            GunlukVirdListConstant.mondayTurkish,
          ),
          appConstantDivider(),
          buildListItem(
            GunlukVirdConstant.tuesday,
            GunlukVirdListConstant.tuesdayCount,
            GunlukVirdListConstant.tuesdayArabic,
            GunlukVirdListConstant.tuesdayTurkish,
          ),
          appConstantDivider(),
          buildListItem(
            GunlukVirdConstant.wednesday,
            GunlukVirdListConstant.wednesdayCount,
            GunlukVirdListConstant.wednesdayArabic,
            GunlukVirdListConstant.wednesdayTurkish,
          ),
          appConstantDivider(),
          buildListItem(
            GunlukVirdConstant.thursday,
            GunlukVirdListConstant.thursdayCount,
            GunlukVirdListConstant.thursdayArabic,
            GunlukVirdListConstant.thursdayTurkish,
          ),
          appConstantDivider(),
          buildListItem(
            GunlukVirdConstant.friday,
            GunlukVirdListConstant.fridayCount,
            GunlukVirdListConstant.fridayArabic,
            GunlukVirdListConstant.fridayTurkish,
          ),
          appConstantDivider(),
          buildListItem(
            GunlukVirdConstant.saturday,
            GunlukVirdListConstant.saturdayCount,
            GunlukVirdListConstant.saturdayArabic,
            GunlukVirdListConstant.saturdayTurkish,
          ),
          appConstantDivider(),
          buildListItem(
            GunlukVirdConstant.sunday,
            GunlukVirdListConstant.sundayCount,
            GunlukVirdListConstant.sundayArabic,
            GunlukVirdListConstant.sundayTurkish,
          ),
        ],
      ),
    );
  }

  ListTile buildListItem(String title, int evradTotalCount, String textTurkish,
      String textArabic) {
    return ListTile(
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
          context,
          MaterialPageRoute(
            builder: (context) => GunlukVirdCountScreen(
              evradTotalCount: evradTotalCount,
              textArabic: textArabic,
              textTurkish: textTurkish,
              textToday: title,
            ),
          ),
        );
      },
    );
  }
}
