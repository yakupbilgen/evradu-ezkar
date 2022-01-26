import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/sekine/sekine_constant.dart';
import 'package:flutter/material.dart';

class SekineHomePage extends StatefulWidget {
  const SekineHomePage({Key? key}) : super(key: key);

  @override
  State<SekineHomePage> createState() => _SekineHomePageState();
}

int readingCount = 0;

class _SekineHomePageState extends State<SekineHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.bgColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          SekineConstant.appBarTitle + ' ($readingCount / 19)',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        actions: [
          IconButton(
            onPressed: () {
              (readingCount < 19) ? readingCount++ : buildAlertDialog(context);

              setState(() {});
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              readingCount = 0;
              setState(() {});
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/images/sekine/1.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  void buildAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: const Text(SekineConstant.dialogOkButton),
      onPressed: () => Navigator.pop(context),
    );

    Widget resetButton = TextButton(
      child: const Text(SekineConstant.dialogResetButton),
      onPressed: () {
        readingCount = 0;
        Navigator.pop(context);
        setState(() {});
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Icon(
        Icons.warning_amber,
        size: AppConstant.iconSize,
        color: AppConstant.iconColor,
      ),
      content: const Text(SekineConstant.dialogAlertContent),
      actions: [
        okButton,
        resetButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
