import 'package:evraduezkar/constant/app_constant.dart';
import 'package:evraduezkar/constant/haftalik_vird/haftalik_vird_constant.dart';
import 'package:flutter/material.dart';

class HaftalikVirdCountScreen extends StatefulWidget {
  final int evradTotalCount;
  final String textArabic;
  final String textTurkish;

  const HaftalikVirdCountScreen({
    Key? key,
    required this.evradTotalCount,
    required this.textArabic,
    required this.textTurkish,
  }) : super(key: key);

  @override
  _HaftalikVirdCountScreenState createState() =>
      _HaftalikVirdCountScreenState();
}

int cekilenEvradCount = 0;

class _HaftalikVirdCountScreenState extends State<HaftalikVirdCountScreen> {
  @override
  void dispose() {
    cekilenEvradCount = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      child: const Text(HaftalikVirdConstant.dialogOkButton),
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
      content: const Text(HaftalikVirdConstant.dialogAlertContent),
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
