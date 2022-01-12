import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:flutter/material.dart';

class TahmidiyyeArabic extends StatefulWidget {
  const TahmidiyyeArabic({Key? key}) : super(key: key);

  @override
  _TahmidiyyeArabicState createState() => _TahmidiyyeArabicState();
}

final imageNumber = List.generate(22, (i) => i);

class _TahmidiyyeArabicState extends State<TahmidiyyeArabic> {
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
                'assets/images/tahmidiyye/${imageNumber[index]}.jpg',
                fit: BoxFit.fitHeight,
              ),
            );
          },
        ),
      ),
    );
  }
}
