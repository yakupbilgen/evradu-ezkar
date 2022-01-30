import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:flutter/material.dart';

class TahmidiyyeArabic extends StatefulWidget {
  const TahmidiyyeArabic({Key? key}) : super(key: key);

  @override
  _TahmidiyyeArabicState createState() => _TahmidiyyeArabicState();
}

const List imageNumber = TahmidiyyeConstant.tahmidiyyeArabicList;
int pageNumber = 0;

class _TahmidiyyeArabicState extends State<TahmidiyyeArabic> {
  @override
  void dispose() {
    super.dispose();
    pageNumber = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
          context,
          TahmidiyyeConstant.appBarReadScreenTitle +
              ' ($pageNumber / ${imageNumber.length})'),
      backgroundColor: TahmidiyyeConstant.bgColor,
      body: PageView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: imageNumber.length,
        onPageChanged: (value) {
          pageNumber = value;
          setState(() {});
        },
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Image.asset(
              imageNumber[index],
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
