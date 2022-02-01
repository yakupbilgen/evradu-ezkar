import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/celcelutiye/celcelutiye_constant.dart';
import 'package:evraduezkar/screen/celcelutiye/celcelutiye_arabic.dart';
import 'package:evraduezkar/screen/celcelutiye/celcelutiye_turkish.dart';
import 'package:flutter/material.dart';

class CelcelutiyeHomepage extends StatefulWidget {
  const CelcelutiyeHomepage({Key? key}) : super(key: key);

  @override
  _CelcelutiyeHomepageState createState() => _CelcelutiyeHomepageState();
}
//TODO: Column yerine list separated kullan. listtile extrac method yap. title, subtitle ve navigator constructor ata

class _CelcelutiyeHomepageState extends State<CelcelutiyeHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, CelcelutiyeConstant.appBarTitle),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          appConstantDivider(),
          ListTile(
            leading: const Icon(
              Icons.spa,
              size: AppConstant.iconSize,
              color: AppConstant.iconColor,
            ),
            title: Text(
              CelcelutiyeConstant.buttonArabic,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              CelcelutiyeConstant.listTileSubTitleTextArabic,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.red),
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
                  builder: (context) => const CelcelutiyeArabic(),
                ),
              );
            },
          ),
          appConstantDivider(),
          ListTile(
            leading: const Icon(
              Icons.spa,
              size: AppConstant.iconSize,
              color: AppConstant.iconColor,
            ),
            title: Text(
              CelcelutiyeConstant.buttonTurkish,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              CelcelutiyeConstant.listTileSubTitleTextTurkish,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
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
                  builder: (context) => const CelcelutiyeTurkish(),
                ),
              );
            },
          ),
          appConstantDivider(),
        ],
      ),
    );
  }
}
