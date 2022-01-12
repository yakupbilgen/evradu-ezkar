import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:flutter/material.dart';

class TahmidiyyeTurkish extends StatefulWidget {
  const TahmidiyyeTurkish({Key? key}) : super(key: key);

  @override
  _TahmidiyyeTurkishState createState() => _TahmidiyyeTurkishState();
}

class _TahmidiyyeTurkishState extends State<TahmidiyyeTurkish> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TahmidiyyeConstant.bgColor,
      body: SafeArea(
        child: PageView.builder(
          physics: const ClampingScrollPhysics(),
          itemCount: TahmidiyyeConstant.tahmidiyyeTurkishList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                (index != 0)
                    ? Center(
                        child: Text(
                          TahmidiyyeConstant.tahmidiyyeConstantText,
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                        ),
                      )
                    : const SizedBox(),
                Center(
                  child: SingleChildScrollView(
                    child: SizedBox(
                      width: screenSize.width - 40,
                      child: Text(
                        TahmidiyyeConstant.tahmidiyyeTurkishList[index],
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
