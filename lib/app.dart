import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/onBoarding.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      

      home:  const Onboarding(),

      
      
    );

  }
}