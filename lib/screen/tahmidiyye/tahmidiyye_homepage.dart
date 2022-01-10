import 'package:evraduezkar/constant/tahmidiyye/tahmidiyye_constant.dart';
import 'package:evraduezkar/screen/tahmidiyye/tahmidiyye_arabic.dart';
import 'package:flutter/material.dart';

class TahmidiyyeHomePage extends StatelessWidget {
  const TahmidiyyeHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TahmidiyyeConstant.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
                leading: const Icon(Icons.spa),
                title: const Text('title'),
                subtitle: const Text('subtitle'),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TahmidiyyeArabic()));
                }),
          ],
        ),

        /*
        Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TahmidiyyeArabic()),
                ),
                child: const Text(TahmidiyyeConstant.buttonArabic),
              ),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TahmidiyyeArabic()),
                ),
                child: const Text(TahmidiyyeConstant.buttonTurkish),
              ),
            ],
          ),
        ),
        */
      ),
    );
  }
}
