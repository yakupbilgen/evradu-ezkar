import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/celcelutiye/celcelutiye_constant.dart';
import 'package:flutter/material.dart';

class CelcelutiyeArabic extends StatefulWidget {
  const CelcelutiyeArabic({Key? key}) : super(key: key);

  @override
  _CelcelutiyeArabicState createState() => _CelcelutiyeArabicState();
}

const imageNumber = CelcelutiyeConstant.celcelutiyeArabicList;
int pageNumber = 0;

class _CelcelutiyeArabicState extends State<CelcelutiyeArabic> {
  @override
  void dispose() {
    super.dispose();
    pageNumber = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context,
          CelcelutiyeConstant.appBarTitle + ' (${pageNumber + 1} / 13)'),
      backgroundColor: CelcelutiyeConstant.bgColor,
      body: PageView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: imageNumber.length,
        onPageChanged: (value) {
          pageNumber = value;
          setState(() {});
        },
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            imageNumber[index],
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}
