import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/kucuk_cevsen/kucuk_cevsen_constant.dart';

class KucukCevsenReadScreen extends StatefulWidget {
  final String babContent;
  final String babMeall;
  final int babIndex;

  const KucukCevsenReadScreen(
      {Key? key,
      required this.babContent,
      required this.babIndex,
      required this.babMeall})
      : super(key: key);

  @override
  _KucukCevsenReadScreenState createState() => _KucukCevsenReadScreenState();
}

late int pageCount;
double textSize = AppConstant.defaultTextSize;
int listCount = KucukCevsenConstant.babList.length;

class _KucukCevsenReadScreenState extends State<KucukCevsenReadScreen> {
  @override
  void initState() {
    super.initState();
    pageCount = widget.babIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    bool isFirstOpen = true;
    final PageController _controller =
        PageController(initialPage: widget.babIndex);

    return Scaffold(
      appBar:
          appAppBarv2(context, KucukCevsenConstant.appBarTitleReadScreen, true),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            debugPrint(AppConstant.defaultTextSize.toString());
                            if (AppConstant.defaultTextSize < 99) {
                              AppConstant.defaultTextSize++;
                              index = pageCount;
                              setState(() {});
                            }
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.red,
                          )),
                      const VerticalDivider(),
                      Text(
                        AppConstant.defaultTextSize.toInt().toString(),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      const VerticalDivider(),
                      IconButton(
                          onPressed: () {
                            debugPrint(AppConstant.defaultTextSize.toString());
                            if (AppConstant.defaultTextSize > 5) {
                              AppConstant.defaultTextSize--;
                              index = widget.babIndex;
                              setState(() {});
                            }
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.red,
                          )),
                    ],
                  ),
                  appConstantDivider(),
                  Text(
                    '$pageCount / $listCount\n',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Text(
                    KucukCevsenConstant.babList[index],
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  appConstantDivider(),
                  bodyTextConstant(
                      context, KucukCevsenConstant.babMeal[index], textSize),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
