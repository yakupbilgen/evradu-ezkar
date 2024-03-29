import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/sekine/sekine_constant.dart';

class SekineHomePage extends StatefulWidget {
  const SekineHomePage({Key? key}) : super(key: key);

  @override
  State<SekineHomePage> createState() => _SekineHomePageState();
}

int readingCount = 0;
int totalReadCount = 19;

class _SekineHomePageState extends State<SekineHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Center(
        child: Image.asset(
          'assets/images/sekine/1.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppConstant.bgColor,
      centerTitle: false,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.red,
          size: AppConstant.iconSize,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Text(
        SekineConstant.appBarTitle + ' ($readingCount / $totalReadCount)',
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
      ),
      actions: [
        const VerticalDivider(),
        IconButton(
          onPressed: () {
            (readingCount < totalReadCount)
                ? readingCount++
                : buildAlertDialog(context);

            setState(() {});
          },
          icon: const Icon(
            Icons.add,
            color: Colors.red,
            size: AppConstant.iconSize,
          ),
        ),
        const VerticalDivider(),
        IconButton(
          onPressed: () {
            readingCount = 0;
            setState(() {});
          },
          icon: const Icon(
            Icons.refresh,
            color: Colors.red,
            size: AppConstant.iconSize,
          ),
        ),
      ],
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
