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
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.spa),
                  title: Text('${index + 1}. Bab Oku'),
                  trailing: const Icon(Icons.arrow_right),
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
                );
              }),
        ),
      ),
    );
  }
}