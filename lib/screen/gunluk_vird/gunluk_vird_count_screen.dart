import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/gunluk_vird/gunluk_vird_constant.dart';

class GunlukVirdCountScreen extends StatefulWidget {
  final int evradTotalCount;
  final String textArabic;
  final String textTurkish;
  final String textToday;

  const GunlukVirdCountScreen({
    Key? key,
    required this.evradTotalCount,
    required this.textArabic,
    required this.textTurkish,
    required this.textToday,
  }) : super(key: key);

  @override
  _GunlukVirdCountScreenState createState() => _GunlukVirdCountScreenState();
}

int cekilenEvradCount = 0;

class _GunlukVirdCountScreenState extends State<GunlukVirdCountScreen> {
  @override
  void dispose() {
    cekilenEvradCount = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(context, widget.textToday + ' Virdi', true),
      body: Container(
        margin: const EdgeInsets.all(AppConstant.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.textTurkish,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Colors.red),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            Text(
              widget.textArabic,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.black),
            ),
            const SizedBox(height: AppConstant.defaultHeight),
            RawMaterialButton(
              onPressed: () {
                if (cekilenEvradCount < widget.evradTotalCount) {
                  cekilenEvradCount++;
                } else {
                  buildAlertDialog(context);
                }
                setState(() {});
              },
              fillColor: Colors.red,
              child: Text(
                cekilenEvradCount.toString() +
                    ' / ' +
                    widget.evradTotalCount.toString(),
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.black),
              ),
              padding: const EdgeInsets.all(50.0),
              shape: const CircleBorder(),
            ),
          ],
        ),
      ),
    );
  }

  void buildAlertDialog(BuildContext context) {
    Widget okButton = TextButton(
      child: const Text(GunlukVirdConstant.dialogOkButton),
      onPressed: () => Navigator.pop(context),
    );

    Widget resetCountButton = TextButton(
      child: const Text(GunlukVirdConstant.dialogText),
      onPressed: () {
        cekilenEvradCount = 0;
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
      content: const Text(GunlukVirdConstant.dialogAlertContent),
      actions: [
        okButton,
        resetCountButton,
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
