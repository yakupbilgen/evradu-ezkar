import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:flutter/material.dart';

class TahmidiyyeTurkish extends StatefulWidget {
  const TahmidiyyeTurkish({Key? key}) : super(key: key);

  @override
  _TahmidiyyeTurkishState createState() => _TahmidiyyeTurkishState();
}

int pageNumber = 0;

class _TahmidiyyeTurkishState extends State<TahmidiyyeTurkish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context,
          TahmidiyyeConstant.appBarReadScreenTitle + '($pageNumber / 20)'),
      backgroundColor: TahmidiyyeConstant.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
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
                                  .headline6
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                            )
                          : const SizedBox(),
                      (index == 0 || index == 20)
                          ? Text(
                              TahmidiyyeConstant.tahmidiyyeTurkishList[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                            )
                          : Text(
                              TahmidiyyeConstant.tahmidiyyeTurkishList[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
