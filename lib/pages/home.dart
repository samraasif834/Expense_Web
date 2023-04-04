// ignore_for_file: prefer_const_constructors

import 'package:expenseweb/pages/containers/container1.dart';
import 'package:expenseweb/utils/constants.dart';
import 'package:expenseweb/widgets/navbar.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            Navbar(),
           Container1(),
          ],
        ),
      ),
    );
  }
}