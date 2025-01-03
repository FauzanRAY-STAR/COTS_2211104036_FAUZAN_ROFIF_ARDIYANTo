import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/board_page/view/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek Clone',
      home: OnboardView(), // Halaman pertama yang dimuat
    );
  }
}
