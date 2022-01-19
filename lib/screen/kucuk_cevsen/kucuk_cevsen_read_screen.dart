import 'package:evraduezkar/constant/app_constant.dart';
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

class _KucukCevsenReadScreenState extends State<KucukCevsenReadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.babIndex.toString(),
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.babContent,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
