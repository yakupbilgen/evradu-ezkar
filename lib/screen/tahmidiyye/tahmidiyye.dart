import 'package:flutter/material.dart';

class Tahmidiyye extends StatefulWidget {
  const Tahmidiyye({Key? key}) : super(key: key);

  @override
  _TahmidiyyeState createState() => _TahmidiyyeState();
}

final imageNumber = List.generate(22, (i) => i);

class _TahmidiyyeState extends State<Tahmidiyye> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          pageSnapping: true,
          physics: const ClampingScrollPhysics(),
          itemCount: imageNumber.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Image.asset(
                'assets/images/${imageNumber[index]}.jpg',
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
    );
  }
}
