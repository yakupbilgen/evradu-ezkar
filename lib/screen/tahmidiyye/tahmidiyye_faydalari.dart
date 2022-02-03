import 'package:flutter/material.dart';

import '../../constant/app_constant.dart';
import '../../constant/tahmidiyye/tahmidiyye_constant.dart';

class TahmidiyyeFaydalari extends StatefulWidget {
  const TahmidiyyeFaydalari({Key? key}) : super(key: key);

  @override
  _TahmidiyyeFaydalariState createState() => _TahmidiyyeFaydalariState();
}

int listLength = TahmidiyyeConstant.tahmidiyyeFaydalariContentTitle.length;
int pageCount = 1;

class _TahmidiyyeFaydalariState extends State<TahmidiyyeFaydalari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
          context,
          TahmidiyyeConstant.textFaydalari + ' ($pageCount / $listLength)',
          true),
      body: Container(
        padding: const EdgeInsets.all(AppConstant.defaultPadding),
        child: PageView.builder(
          itemCount: listLength,
          onPageChanged: (value) {
            pageCount = value + 1;
            setState(() {});
          },
          itemBuilder: (context, index) {
            return SingleChildScrollView(
                child: Column(
              children: [
                Text(
                  TahmidiyyeConstant.tahmidiyyeFaydalariTitle[index] + '\n',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.red),
                ),
                Text(
                  TahmidiyyeConstant.tahmidiyyeFaydalariContentTitle[index],
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ));
          },
        ),
      ),
    );
  }
}

class BuildExpansionTile extends StatelessWidget {
  final String text;
  final String contentText;
  const BuildExpansionTile(
      {Key? key, required this.text, required this.contentText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(text),
      collapsedTextColor: Colors.red,
      leading: const Icon(Icons.spa),
      children: [
        Text(contentText),
      ],
    );
  }
}
