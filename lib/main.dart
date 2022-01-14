import 'package:evraduezkar/screen/celcelutiye/celcelutiye_homepage.dart';
import 'package:flutter/material.dart';

import 'screen/tahmidiyye/tahmidiyye_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const ScreenListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ScreenListPage extends StatelessWidget {
  const ScreenListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEE7D4),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            ListTile(
              leading: const Icon(Icons.spa),
              title: const Text('Tahmidiyye'),
              subtitle: const Text('2'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TahmidiyyeHomePage(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.spa),
              title: const Text('Celcelutiye'),
              subtitle: const Text('2'),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CelcelutiyeHomepage(),
                  ),
                );
              },
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
