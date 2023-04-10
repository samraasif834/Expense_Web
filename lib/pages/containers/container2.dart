import 'package:expenseweb/utils/colors.dart';
import 'package:expenseweb/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer(),
      desktop: DesktopContainer2(),
    );
  }
}

Widget MobileContainer() {
  return Container(
      child: Column(children: [
    Container(
        height: w! / 1.2,
        width: w! / 1.2,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(illustration1),
            fit: BoxFit.contain,
          ),
        )),
    SizedBox(
      height: 20,
    ),
    Text("Track your \nExpenses to \nSave Money",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1.2)),
    SizedBox(
      height: 10,
    ),
    Text(
      'Helps you to organize \nyour income and expenses',
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
    ),
    SizedBox(
      height: 30,
    ),
    Container(
        height: 45,
        child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.primary),
            ),
            onPressed: () {},
            icon: Icon(Icons.arrow_drop_down),
            label: Text("Try free demo"))),
    SizedBox(
      height: 20,
    ),
    Text(
      '— Web, iOs and Android',
      style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
    ),
    SizedBox(
      height: 30,
    )
    // Container(
    //     height: 530,
    //     decoration: BoxDecoration(
    //       image: DecorationImage(
    //         image: AssetImage(illustration1),
    //         fit: BoxFit.contain,
    //       ),
    //     ))
  ]));
}

Widget DesktopContainer2() {
  return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(children: [
        Expanded(
            child: Stack(children: [
              Positioned(
                right: -60,
                // left: -20,
                child: Container(height: 320,
                width: 320,
               
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage(vector2),
                  fit:BoxFit.contain,
                  )
                ),
                )),
               Positioned(
              // right: -20,
              top:70,
              left: -40,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(vector1),
                  fit: BoxFit.contain,
                )),
              )),  
          Positioned(
              left: 43,
              right: 43,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: 712,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(dashboard),
                    fit: BoxFit.contain,
                  ),
                ),
              ))
        ])),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [companylogo(fb), companylogo(google), companylogo(cocacola), companylogo(samsung)],
          ),
        )
      ]));
}

Widget companylogo(String image) {
  return Container(
      width: 160,
      height: 36 ,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ));
}
