import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/kucuk_cevsen/kucuk_cevsen_constant.dart';

class KucukCevsenReadScreen extends StatefulWidget {
  final String babContent;
  final String babMeall;
  final int babIndex;
  final List cevsenContent;

  const KucukCevsenReadScreen(
      {Key? key,
      required this.babContent,
      required this.babIndex,
      required this.babMeall,
      required this.cevsenContent})
      : super(key: key);

  @override
  _KucukCevsenReadScreenState createState() => _KucukCevsenReadScreenState();
}

late int pageCount;
double textSize = AppConstant.defaultTextSize;
int listCount = KucukCevsenConstant.babMeal.length;

class _KucukCevsenReadScreenState extends State<KucukCevsenReadScreen> {
  @override
  void initState() {
    super.initState();
    pageCount = widget.babIndex;
  }

  @override
  Widget build(BuildContext context) {
    bool isFirstOpen = true;
    final PageController _controller = PageController(initialPage: pageCount);

    return Scaffold(
      appBar:
          appAppBar(context, KucukCevsenConstant.appBarTitleReadScreen, true),
      body: Padding(
        padding: const EdgeInsets.only(
            left: AppConstant.defaultPadding,
            right: AppConstant.defaultPadding),
        child: PageView.builder(
          controller: _controller,
          itemCount: listCount,
          itemBuilder: (context, index) {
            (isFirstOpen) ? index = widget.babIndex : null;
            isFirstOpen = false;
            pageCount = index + 1;
            return SingleChildScrollView(
              child: Column(
                children: [
                  //Show pageNumber / totalIndex
                  const BodyListIndex(),
                  //Show cevsen content
                  bodyTextConstant(
                      context, widget.cevsenContent[index], textSize),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class BodyListIndex extends StatelessWidget {
  const BodyListIndex({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$pageCount / $listCount\n',
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
    );
  }
}
