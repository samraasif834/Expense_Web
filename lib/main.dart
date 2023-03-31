import 'package:expenseweb/pages/home.dart';
import 'package:expenseweb/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xpense',
      theme: ThemeData(
        fontFamily: 'HindSiliguri',
       brightness: Brightness.light,
       primaryColor: AppColors.primary,
      ),
      home: const Home(),
       
    ); 
  }
}

