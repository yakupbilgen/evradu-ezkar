import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/celcelutiye/celcelutiye_constant.dart';

class CelcelutiyeFaydalari extends StatefulWidget {
  const CelcelutiyeFaydalari({Key? key}) : super(key: key);

  @override
  State<CelcelutiyeFaydalari> createState() => _CelcelutiyeFaydalariState();
}

class _CelcelutiyeFaydalariState extends State<CelcelutiyeFaydalari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appAppBar(context, CelcelutiyeConstant.appBarTitleFaydalari, true),
      body: Container(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              bodyTextConstant(
                  context,
                  CelcelutiyeConstant.celcelutiyeTurkishFaydalari[0] + '\n',
                  20.0),
              bodyTextConstant(context,
                  CelcelutiyeConstant.celcelutiyeTurkishFaydalari[1], 20.0),

              /*
              Text(
                CelcelutiyeConstant.celcelutiyeTurkishFaydalari[0] + '\n',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              Text(
                CelcelutiyeConstant.celcelutiyeTurkishFaydalari[1],
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}
