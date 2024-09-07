
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/authentication_repository.dart';
import 'package:hope/common/Loaders.dart';

class LoginController extends GetxController{
   
   static LoginController get instance => Get.find();
   
 //  final localStorage = GetStorage();
   final email = TextEditingController();
   final password = TextEditingController();
   final hidePasssword = true.obs;
   GlobalKey<FormState> loginFormKey = GlobalKey<FormState>(); 
  // final userController = Get.put(UserController());



   Future<void> emailAndPasswordSignIn() async {
    try{         

      final userCredential =  await AuthenticationRepository.instance.loginWithEmailandPassword(email.text.trim(), password.text.trim());


      AuthenticationRepository.instance.screenRedirect();
    } catch(e){
      Loaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
   }
   

}