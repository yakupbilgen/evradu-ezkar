import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/kucuk_cevsen/kucuk_cevsen_constant.dart';

class KucukCevsenReadScreen extends StatefulWidget {
  final String babContent;
  final int babIndex;

  const KucukCevsenReadScreen(
      {Key? key, required this.babContent, required this.babIndex})
      : super(key: key);

  @override
  _KucukCevsenReadScreenState createState() => _KucukCevsenReadScreenState();
}

late int pageCount;
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
          appAppBar(context, KucukCevsenConstant.appBarTitleReadScreen, true),
      body: Padding(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
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
                  Text(
                    '$pageCount / $listCount\n',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Text(
                    KucukCevsenConstant.babList[index],
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
