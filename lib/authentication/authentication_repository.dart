
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hope/authentication/login.dart';
import 'package:hope/authentication/onBoarding.dart';
import 'package:hope/exceptions/exceptions.dart';
import 'package:hope/home/home.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
    final deviceStorage = GetStorage();

  User? get authUser => _auth.currentUser;

  Future<void> screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      Get.offAll(() => Homee()
      );
    } else {

      deviceStorage.writeIfNull('IsFirstTime', true);
      final isFirstTime = deviceStorage.read('IsFirstTime') as bool?;
      if (isFirstTime == false) {
        Get.offAll(() => Signin());
      } else {
        Get.offAll(() => Onboarding());
      }
    }
  }


  
  Future<UserCredential> loginWithEmailandPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.message ?? 'Unknown Firebase Auth error');
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.message ?? 'Unknown Firebase error');
    } on FormatException catch (_) {
      throw TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.message ?? 'Unknown Platform error');
    } catch (e) {
      throw 'Something went wrong, Please try again: $e';
    }
  }


  
  Future<UserCredential> registerWithEmailandPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.message ?? 'Unknown Firebase Auth error');
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.message ?? 'Unknown Firebase error');
    } on FormatException catch (_) {
      throw TFormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.message ?? 'Unknown Platform error');
    } catch (e) {
      throw 'Something went wrong, Please try again: $e';
    }
  }


  Future<void> logout() async {
    try {
      await _auth.signOut();
      Get.offAll(() => Signin());
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign out. Please try again.');
    }
  }
}