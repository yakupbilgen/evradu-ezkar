import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_arabic.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_turkish.dart';
import 'package:flutter/material.dart';

class TahmidiyyeHomePage extends StatefulWidget {
  const TahmidiyyeHomePage({Key? key}) : super(key: key);

  @override
  State<TahmidiyyeHomePage> createState() => _TahmidiyyeHomePageState();
}

//TODO: Column yerine list separated kullan. listtile extrac method yap. title, subtitle ve navigator constructor ata

class _TahmidiyyeHomePageState extends State<TahmidiyyeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, TahmidiyyeConstant.appBarTitle),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          appConstantDivider(),
          ListTile(
            leading: const Icon(
              Icons.spa,
              size: AppConstant.iconSize,
              color: AppConstant.iconColor,
            ),
            title: Text(
              TahmidiyyeConstant.buttonArabic,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              TahmidiyyeConstant.listTileSubTitleTextArabic,
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
                  builder: (context) => const TahmidiyyeArabic(),
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
              TahmidiyyeConstant.buttonTurkish,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              TahmidiyyeConstant.listTileSubTitleTextTurkish,
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
                  builder: (context) => const TahmidiyyeTurkish(),
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
