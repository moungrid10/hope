
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Loaders  {
  
  static hideSnackBar()=> ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();

  static customToast({required message}) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        elevation: 0,
        duration: Duration(seconds: 3),
        backgroundColor: Colors.transparent,
        content: Container(
          padding: EdgeInsets.all(12.0),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black, 
          ),
          child: Center(child: Text(message, style: Theme.of(Get.context!).textTheme.labelLarge,),),
        ),
      ),
    );
  }

  static successSnackBar({required title,message ='',duration= 3}){
    Get.snackbar(title, message,
    isDismissible: true,
    shouldIconPulse: true,
    colorText: Colors.white,
    backgroundColor: Colors.red,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: duration),
    margin: EdgeInsets.all(10),
    icon: Icon(Icons.check, color: Colors.white,)
    );
  }


  static warningSnackBar({required title, message=""}){
  Get.snackbar(
    title,
    message,
    isDismissible: true,
    shouldIconPulse: true,
    colorText: Colors.white,
    backgroundColor: Colors.orange,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: 3),
    margin: EdgeInsets.all(20),
    icon: Icon(Icons.warning, color:Colors.white,)
    
  );
  }
  static errorSnackBar({required title, message=""}){
    Get.snackbar(
    title,
    message,
    isDismissible: true,
    shouldIconPulse: true,
    colorText: Colors.white,
    backgroundColor: Colors.red.shade600,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: 3),
    margin: EdgeInsets.all(20),
    icon: Icon(Icons.warning_amber, color: Colors.white,)
    
  );
  }
  
}