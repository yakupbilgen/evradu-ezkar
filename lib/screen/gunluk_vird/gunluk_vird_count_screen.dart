import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/gunluk_vird/gunluk_vird_constant.dart';
import 'package:flutter/material.dart';

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
      appBar: appAppBar(context, widget.textToday + ' Virdi'),
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.textTurkish,
                style: const TextStyle(fontSize: 42, color: Colors.red),
              ),
              const SizedBox(height: 20),
              Text(
                widget.textArabic,
                style: const TextStyle(fontSize: 36),
              ),
              const SizedBox(height: 20),
              RawMaterialButton(
                onPressed: () {
                  if (cekilenEvradCount < widget.evradTotalCount) {
                    cekilenEvradCount++;
                  } else {
                    buildAlertDialog(context);
                  }
                  setState(() {});
                },
                elevation: 2.0,
                fillColor: Colors.red,
                child: Text(
                  cekilenEvradCount.toString() +
                      ' / ' +
                      widget.evradTotalCount.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
                padding: const EdgeInsets.all(50.0),
                shape: const CircleBorder(),
              ),
            ],
          ),
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
      child: const Text('Sıfırla'),
      onPressed: () {
        cekilenEvradCount = 0;
        Navigator.pop(context);
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
