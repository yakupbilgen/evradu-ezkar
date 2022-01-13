import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:flutter/material.dart';

class CelcelutiyeHomepage extends StatefulWidget {
  const CelcelutiyeHomepage({Key? key}) : super(key: key);

  @override
  _CelcelutiyeHomepageState createState() => _CelcelutiyeHomepageState();
}

const imageNumber = TahmidiyyeConstant.tahmidiyyeArabicList;

class _CelcelutiyeHomepageState extends State<CelcelutiyeHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TahmidiyyeConstant.bgColor,
      body: SafeArea(
        child: PageView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: imageNumber.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Image.asset(
                imageNumber[index],
                fit: BoxFit.fitHeight,
              ),
            );
          },
        ),
      ),
    );
  }
}
