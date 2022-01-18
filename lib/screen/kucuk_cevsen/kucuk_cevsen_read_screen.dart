import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/kucuk_cevsen/kucuk_cevsen_constant.dart';
import 'package:flutter/material.dart';

class KucukCevsenReadScreen extends StatefulWidget {
  String babContent;
  int babIndex;

  KucukCevsenReadScreen(
      {Key? key, required this.babContent, required this.babIndex})
      : super(key: key);

  @override
  _KucukCevsenReadScreenState createState() => _KucukCevsenReadScreenState();
}

class _KucukCevsenReadScreenState extends State<KucukCevsenReadScreen> {
  bool isFirstOpen = true;
  @override
  Widget build(BuildContext context) {
    final PageController _controller =
        PageController(initialPage: widget.babIndex);
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: PageView.builder(
          controller: _controller,
          itemCount: KucukCevsenConstant.babList.length,
          itemBuilder: (context, index) {
            (isFirstOpen) ? index = widget.babIndex : null;
            isFirstOpen = false;
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${(index + 1).toString()} Bab',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.red, fontWeight: FontWeight.bold),
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
              ),
            );
          },
        ),
      ),
    );
  }
}
