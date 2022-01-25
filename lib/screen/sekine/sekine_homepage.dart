import 'package:evraduezkar/constant/app_constant.dart';
import 'package:flutter/material.dart';

class SekineHomePage extends StatefulWidget {
  const SekineHomePage({Key? key}) : super(key: key);

  @override
  State<SekineHomePage> createState() => _SekineHomePageState();
}

class _SekineHomePageState extends State<SekineHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, "title"),
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/images/sekine/1.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
