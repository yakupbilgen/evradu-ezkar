import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/celcelutiye/celcelutiye_constant.dart';

class CelcelutiyeTurkish extends StatefulWidget {
  const CelcelutiyeTurkish({Key? key}) : super(key: key);

  @override
  _CelcelutiyeTurkishState createState() => _CelcelutiyeTurkishState();
}

int pageNumber = 0;
int listLenghtTurkish = CelcelutiyeConstant.celcelutiyeTurkishList.length;

class _CelcelutiyeTurkishState extends State<CelcelutiyeTurkish> {
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
          CelcelutiyeConstant.appBarTitle +
              ' (${pageNumber + 1} / $listLenghtTurkish)',
          true),
      body: Padding(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: listLenghtTurkish,
          onPageChanged: (value) {
            pageNumber = value;
            setState(() {});
          },
          itemBuilder: (context, index) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      CelcelutiyeConstant.celcelutiyeTurkishList[index],
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(
                      'Meal\n',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    Text(
                      CelcelutiyeConstant.celcelutiyeTurkishMealList[index],
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
