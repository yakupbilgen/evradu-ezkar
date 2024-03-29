import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/tahmidiyye/tahmidiyye_constant.dart';

class TahmidiyyeTurkish extends StatefulWidget {
  const TahmidiyyeTurkish({Key? key}) : super(key: key);

  @override
  _TahmidiyyeTurkishState createState() => _TahmidiyyeTurkishState();
}

int pageNumber = 0;
int listLenght = TahmidiyyeConstant.tahmidiyyeTurkishList.length;

class _TahmidiyyeTurkishState extends State<TahmidiyyeTurkish> {
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
              '(${pageNumber + 1} / $listLenght)',
          true),
      body: Padding(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: TahmidiyyeConstant.tahmidiyyeTurkishList.length,
          onPageChanged: (value) {
            pageNumber = value;
            setState(() {});
          },
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (index != 0 && index != 20)
                        ? Text(
                            TahmidiyyeConstant.tahmidiyyeTurkishConstantText,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                          )
                        : const SizedBox(),
                    (index == 0 || index == 20)
                        ? Text(
                            TahmidiyyeConstant.tahmidiyyeTurkishList[index],
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
                          )
                        : Text(
                            TahmidiyyeConstant.tahmidiyyeTurkishList[index],
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red),
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
