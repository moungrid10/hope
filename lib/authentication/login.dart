import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/,controllers/login_controller.dart';
import 'package:hope/authentication/signup.dart';
import 'package:hope/authentication/visiteeur.dart';


class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  // Future<void> signIn() async {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (context) => const Center(child: CircularProgressIndicator()),
  //   );
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: _emailController.text.trim(),
  //       password: _passController.text.trim(),
  //     );
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //   } finally {
  //     Navigator.of(context).pop(); 
  //     Navigator.of(context).popUntil((route) => route.isFirst);
  //   }
  // }

  // @override
  // void dispose() {
  //   _emailController.dispose();
  //   _passController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
        final controller = Get.put(LoginController());

    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Visiteur()),
              );
            },
            child: const Text(
              'Skip',
              style: TextStyle(

                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: ListView(
            children: [
              
              Center(
                child: Image.asset(
                  'lib/assets/images/logo10.png',
                  width: screenWidth * 0.6,
                ),
              ),
              SizedBox(height: 20),
              const Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 20
              ),
              Container(
                width: screenWidth *0.9,
                height: 60,
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
         
                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(1, 3.5),
                    blurRadius: 3,
                    color: Colors.grey,
         
         
                  ),
                  ]     
         
               
                   ),
                child:TextField(
                  controller: controller.email,
                decoration: InputDecoration(
                  hintText: '   Email',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                  prefixIcon: const Icon(Icons.email,color: Color(0xFFFC4B60),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.blue),
                     borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),),
              SizedBox(height: 20,),
           
              Container(
                width: screenWidth *0.9,
                height: 60,
                
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
         
                  ),
                  boxShadow: [BoxShadow(
                    offset: Offset(1, 3.5),
                    blurRadius: 3,
                    color: Colors.grey,
         
         
                  ),
                  ]     
         
               
                   ),
                child:TextField(
                  
                  controller: controller.password,
                decoration: InputDecoration(
                  hintText: '   Password',
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                  prefixIcon: const Icon(Icons.lock,color: Color(0xFFFC4B60),),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Colors.blue),
                     borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),),
              SizedBox(height: screenHeight * 0.03),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFC4B60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  minimumSize: Size(screenWidth * 0.9, 55),
                ),
                onPressed: ()=>controller.emailAndPasswordSignIn(),
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFC4B60),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
