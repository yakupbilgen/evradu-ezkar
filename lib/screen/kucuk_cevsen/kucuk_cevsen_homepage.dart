import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/kucuk_cevsen/kucuk_cevsen_constant.dart';
import 'kucuk_cevsen_read_screen.dart';

class KucukCevsenHomepage extends StatefulWidget {
  const KucukCevsenHomepage({Key? key}) : super(key: key);

  @override
  State<KucukCevsenHomepage> createState() => _KucukCevsenHomepageState();
}

class _KucukCevsenHomepageState extends State<KucukCevsenHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, KucukCevsenConstant.appBarTitleHomepage, true),
      body: ListView.separated(
        itemCount: KucukCevsenConstant.babList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(
              Icons.spa,
              size: AppConstant.iconSize,
              color: AppConstant.iconColor,
            ),
            title: Text(
              '${index + 1}. Bab Oku',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.arrow_right,
                size: AppConstant.iconSize, color: AppConstant.iconColor),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => KucukCevsenReadScreen(
                    babIndex: index,
                    babContent: KucukCevsenConstant.babList[index],
                    babMeall: KucukCevsenConstant.babMeal[index],
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => appConstantDivider(),
      ),
    );
  }
}
