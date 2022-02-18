import 'package:flutter/material.dart';

class AppConstant {
  static const bgColor = Color(0xFFEEE7D4);
  static const iconSize = 32.0;
  static const iconColor = Colors.red;
  static const defaultPadding = 20.0;
  static const defaultHeight = 20.0;

  static const screenList = [
    'Küçük Çevşen',
    'Tahmidiyye',
    'Celcelutiye',
    'Sekine Duası',
    'Günlük Vird'
  ];

  static const screenListTahmidiyye = 'Tahmidiyye';
  static const screenListCelcelutiye = 'Celcelutiye';
  static const screenListKucukCevsen = 'Küçük Çevşen';
  static const screenListSekineDuasi = 'Sekine Duası';
  static const screenListGunlukVird = 'Günlük Vird';

  static const appBarTitle = 'Evradu Ekzar Okuma Programı';
}

class AppConstantHomepageList {
  static const item1 = 'Küçük Çevşen';
  static const item2 = 'Günlük Vird';
  static const item3 = 'Tahmidiyye';
  static const item4 = 'Celcelutiye';
  static const item5 = 'Sekine Duası';
}

Divider appConstantDivider() {
  return const Divider(color: Colors.red);
}

AppBar appAppBar(BuildContext context, String title, bool showBackbutton) {
  return AppBar(
    backgroundColor: AppConstant.bgColor,
    centerTitle: false,
    title: Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(fontWeight: FontWeight.bold, color: Colors.red),
    ),
    leading: (showBackbutton)
        ? IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.red,
              size: AppConstant.iconSize,
            ),
            onPressed: () => Navigator.pop(context),
          )
        : null,
  );
}
