import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/celcelutiye/celcelutiye_constant.dart';
import 'package:flutter/material.dart';

class CelcelutiyeFaydalari extends StatefulWidget {
  const CelcelutiyeFaydalari({Key? key}) : super(key: key);

  @override
  State<CelcelutiyeFaydalari> createState() => _CelcelutiyeFaydalariState();
}

class _CelcelutiyeFaydalariState extends State<CelcelutiyeFaydalari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, CelcelutiyeConstant.appBarTitleFaydalari),
      body: Container(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                CelcelutiyeConstant.celcelutiyeTurkishFaydalariTextOne + '\n',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              Text(
                CelcelutiyeConstant.celcelutiyeTurkishFaydalariTextTwo,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
