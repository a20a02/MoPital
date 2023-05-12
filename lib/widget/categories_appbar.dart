import 'package:flutter/material.dart';

import '../constants.dart';

AppBar categoriesAppbar(BuildContext context, String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 16, right: 16),
        child: IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 32,
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    ],
    title: Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 20),
      child: Text(
        title,
        style: largeFont,
      ),
    ),
  );
}
