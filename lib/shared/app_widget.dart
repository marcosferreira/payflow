import 'package:flutter/material.dart';
import 'package:payflow/modules/login/login_page.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(
          primaryColor: AppColors.primary,
          appBarTheme: AppBarTheme(
            brightness: Brightness.dark,
          )),
      home: LoginPage(),
    );
  }
}
