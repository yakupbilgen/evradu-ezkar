import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/kucuk_cevsen/kucuk_cevsen_constant.dart';
import 'package:evraduezkar/screen/kucuk_cevsen/kucuk_cevsen_read_screen.dart';
import 'package:flutter/material.dart';

class KucukCevsenHomepage extends StatefulWidget {
  const KucukCevsenHomepage({Key? key}) : super(key: key);

  @override
  State<KucukCevsenHomepage> createState() => _KucukCevsenHomepageState();
}

class _KucukCevsenHomepageState extends State<KucukCevsenHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: KucukCevsenConstant.babList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.spa,
                      size: AppConstant.iconSize,
                      color: AppConstant.iconColor,
                    ),
                    title: Text(
                      '${index + 1}. Bab Oku',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_right,
                        size: AppConstant.iconSize,
                        color: AppConstant.iconColor),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KucukCevsenReadScreen(
                            babIndex: index,
                            babContent: KucukCevsenConstant.babList[index],
                          ),
                        ),
                      );
                    },
                  ),
                  appConstantDivider()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
