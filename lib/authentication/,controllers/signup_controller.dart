
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/authentication_repository.dart';
import 'package:hope/authentication/login.dart';
import 'package:hope/authentication/models/user_model.dart';
import 'package:hope/authentication/repositoriess/user_repository.dart';
import 'package:hope/common/Loaders.dart';

class Signupcontroller extends GetxController{
   
   static Signupcontroller get instance => Get.find();
   
   final hidePasssword = true.obs;
   final email = TextEditingController();
   final lastname = TextEditingController();
   final username = TextEditingController();
   final phoneNumber = TextEditingController();
   final firstname = TextEditingController();
   final password = TextEditingController();
   GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); 



   void signup() async{
    try{






      final userCredential =  await AuthenticationRepository.instance.registerWithEmailandPassword(email.text.trim(), password.text.trim());


      final newUser = UserModel(
        id:userCredential.user!.uid,
         firstname:firstname.text.trim(),
         lastname:lastname.text.trim(),
        username:username.text.trim(),
        email:email.text.trim(),
         phoneNumber:phoneNumber.text.trim(),
         profilePicture:''
        );

        final userRepository = Get.put(UserRepository()); 

        await userRepository.saveUserRecord(newUser);


        Loaders.successSnackBar(title: "Congratulation", message: "Your account has been created!  ");

        Get.to(()=>Signin());









     } catch(e) {

      Loaders.errorSnackBar(title: "Oh Snap!", message: e.toString());


     } 
   }


}