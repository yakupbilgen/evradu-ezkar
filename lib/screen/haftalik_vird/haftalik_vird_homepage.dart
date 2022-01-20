import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/haftalik_vird/haftalik_vird_constant.dart';
import 'package:flutter/material.dart';

import 'haftalik_vird_count_screen.dart';

class HaftalikVirdHomepage extends StatefulWidget {
  const HaftalikVirdHomepage({Key? key}) : super(key: key);

  @override
  _HaftalikVirdHomepageState createState() => _HaftalikVirdHomepageState();
}

class _HaftalikVirdHomepageState extends State<HaftalikVirdHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildListItem(
              HaftalikVirdConstant.monday,
              HaftalikVirdListConstant.mondayCount,
              HaftalikVirdListConstant.mondayArabic,
              HaftalikVirdListConstant.mondayTurkish,
            ),
            buildListItem(
              HaftalikVirdConstant.tuesday,
              HaftalikVirdListConstant.tuesdayCount,
              HaftalikVirdListConstant.tuesdayArabic,
              HaftalikVirdListConstant.tuesdayTurkish,
            ),
            buildListItem(
              HaftalikVirdConstant.wednesday,
              HaftalikVirdListConstant.wednesdayCount,
              HaftalikVirdListConstant.wednesdayArabic,
              HaftalikVirdListConstant.wednesdayTurkish,
            ),
            buildListItem(
              HaftalikVirdConstant.thursday,
              HaftalikVirdListConstant.thursdayCount,
              HaftalikVirdListConstant.thursdayArabic,
              HaftalikVirdListConstant.thursdayTurkish,
            ),
            buildListItem(
              HaftalikVirdConstant.friday,
              HaftalikVirdListConstant.fridayCount,
              HaftalikVirdListConstant.fridayArabic,
              HaftalikVirdListConstant.fridayTurkish,
            ),
            buildListItem(
              HaftalikVirdConstant.saturday,
              HaftalikVirdListConstant.saturdayCount,
              HaftalikVirdListConstant.saturdayArabic,
              HaftalikVirdListConstant.saturdayTurkish,
            ),
            buildListItem(
              HaftalikVirdConstant.sunday,
              HaftalikVirdListConstant.sundayCount,
              HaftalikVirdListConstant.sundayArabic,
              HaftalikVirdListConstant.sundayTurkish,
            ),
          ],
        ),
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
      title: Text(title),
      trailing: const Icon(
        Icons.arrow_right,
        size: AppConstant.iconSize,
        color: AppConstant.iconColor,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HaftalikVirdCountScreen(
              evradTotalCount: evradTotalCount,
              textArabic: textArabic,
              textTurkish: textTurkish,
            ),
          ),
        );
      },
    );
  }
}
