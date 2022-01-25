import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:flutter/material.dart';

class TahmidiyyeArabic extends StatefulWidget {
  const TahmidiyyeArabic({Key? key}) : super(key: key);

  @override
  _TahmidiyyeArabicState createState() => _TahmidiyyeArabicState();
}

const imageNumber = TahmidiyyeConstant.tahmidiyyeArabicList;

class _TahmidiyyeArabicState extends State<TahmidiyyeArabic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, "title"),
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
