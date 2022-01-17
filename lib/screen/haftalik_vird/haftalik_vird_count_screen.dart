import 'package:evraduezkar/constant/app_constant.dart';
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
                    //TO DO: Show snackbar!
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
}
