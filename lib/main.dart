import 'package:flutter/material.dart';
import 'package:lab9/routes/routes.dart';
import 'routes/pageRoutes.dart';
import 'style/AppTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'lab 9',
      theme: AppThemes.lightTheme,
      initialRoute: AppRoutes.initial,
      routes: AppPages.pageto,
    );
  }
}
