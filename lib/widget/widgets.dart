import 'package:flutter/material.dart';

import '../constant/app_constant.dart';

Widget customListTile(BuildContext context, String title, String subtitle,
    StatefulWidget navigatorPage) {
  return Column(
    children: [
      appConstantDivider(),
      ListTile(
        leading: const Icon(
          Icons.spa,
          size: AppConstant.iconSize,
          color: AppConstant.iconColor,
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Colors.red),
        ),
        trailing: const Icon(
          Icons.arrow_right,
          size: AppConstant.iconSize,
          color: AppConstant.iconColor,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navigatorPage,
            ),
          );
        },
      ),
    ],
  );
}
