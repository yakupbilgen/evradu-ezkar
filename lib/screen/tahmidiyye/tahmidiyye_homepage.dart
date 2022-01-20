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

class _TahmidiyyeHomePageState extends State<TahmidiyyeHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TahmidiyyeConstant.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.spa,
                size: AppConstant.iconSize,
              ),
              title: const Text(TahmidiyyeConstant.buttonArabic),
              subtitle: const Text(TahmidiyyeConstant.listTileTitleTextArabic),
              trailing:
                  const Icon(Icons.arrow_right, size: AppConstant.iconSize),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TahmidiyyeArabic(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.spa,
                size: AppConstant.iconSize,
              ),
              title: const Text(TahmidiyyeConstant.buttonTurkish),
              subtitle: const Text(TahmidiyyeConstant.listTileTitleTextTurkish),
              trailing: const Icon(
                Icons.arrow_right,
                size: AppConstant.iconSize,
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
            const Divider(),
          ],
        ),
      ),
    );
  }
}
