import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/kucuk_cevsen/kucuk_cevsen_constant.dart';
import 'package:flutter/material.dart';

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
      appBar: appAppBar(
          context,
          KucukCevsenConstant.appBarTitleReadScreen +
              ' ($pageCount / $listCount)'),
      backgroundColor: AppConstant.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
        child: PageView.builder(
          controller: _controller,
          itemCount: listCount,
          itemBuilder: (context, index) {
            (isFirstOpen) ? index = widget.babIndex : null;
            isFirstOpen = false;
            pageCount = index + 1;
            debugPrint('page countt => ' + pageCount.toString());
            return SingleChildScrollView(
              child: Text(
                KucukCevsenConstant.babList[index],
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ),
    );
  }
}
