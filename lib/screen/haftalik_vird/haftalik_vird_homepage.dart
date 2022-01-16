import 'package:evraduezkar/constant/app_constant.dart';
import 'package:flutter/material.dart';

class HaftalikVirdHomepage extends StatefulWidget {
  int evradTotalCount;
  HaftalikVirdHomepage(this.evradTotalCount, {Key? key}) : super(key: key);

  @override
  _HaftalikVirdHomepageState createState() => _HaftalikVirdHomepageState();
}

int cekilenEvradCount = 0;

class _HaftalikVirdHomepageState extends State<HaftalikVirdHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '‎لآ اِلـَهَ اِلاَّ آنْتَ سُبحَانَكَ اِنّـِى كُنْتُ مِنَ الـَّظالِمِينََ',
              style: TextStyle(fontSize: 42, color: Colors.red),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lâ ilâhe illâ ente sübhâneke innî küntü minezzâlimîn',
              style: TextStyle(fontSize: 36),
            ),
            const SizedBox(
              height: 20,
            ),
            RawMaterialButton(
                onPressed: () {
                  if (cekilenEvradCount < widget.evradTotalCount) {
                    cekilenEvradCount++;
                  } else {
                    debugPrint('Zikir sayısına ulaşıldı!');
                  }
                  setState(() {});
                },
                elevation: 2.0,
                fillColor: Colors.blue,
                child: Text(
                  cekilenEvradCount.toString() +
                      ' / ' +
                      widget.evradTotalCount.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
                padding: const EdgeInsets.all(50.0),
                shape: const CircleBorder()),
          ],
        ),
      ),
    );
  }
}
