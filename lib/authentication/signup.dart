
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/,controllers/signup_controller.dart';
import 'package:hope/authentication/login.dart';
import 'package:hope/authentication/visiteeur.dart';



class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _emailController= TextEditingController();
    final _passController= TextEditingController();
    final _confController= TextEditingController();
    // Future signUp() async{
    //  if (passwordconfirmed())
    //  {
    //    UserCredential user=  await FirebaseAuth.instance.createUserWithEmailAndPassword
    //   (email: _emailController.text.trim(), 
    //   password: _passController.text.trim(),);

    //    Future adduser(String email, String password,) async{
    //     String uid=user.user!.uid;
    //     DatabaseReference users= FirebaseDatabase.instance.ref("users").child(uid);
    //     await users.set({
    //       'email': email,
    //       'password': password,
    //       'id': uid,

    //     }).then((value) {Navigator.push(context, 
    //     MaterialPageRoute(builder: (context) =>  InfoScreen(),));});


    //   }
    // adduser(_emailController.text.trim(), _passController.text.trim());
      

     
    //  //Navigator.push(context, MaterialPageRoute(builder: (context) => Auth(),));
    //  }
    // }
    // bool passwordconfirmed(){
    //   if( _passController.text.trim() ==  _confController.text.trim()){
    //     return true;

    //   }else{
    //     return false;

    //   }

    // }
    //   @override
    //   void dispose(){
    //     super.dispose();
    //     _emailController.dispose();
    //     _passController.dispose();
    //     _confController.dispose();
    //   }
      
  @override
  Widget build(BuildContext context) {
        final controller = Get.put(Signupcontroller());

        final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: TextButton(
              
              onPressed: (){
              Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  const Visiteur())
                      );
            },
             child: const  Text('Skip',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.black,),)),
          )
        ],

      ),
      
      body: Container(
        padding:  EdgeInsets.symmetric(horizontal: screenWidth * 0.05),

         child:ListView(
          scrollDirection: Axis.vertical,

           children:[ 
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
           
            children: [
              
              Image.asset(
                'lib/assets/images/logo10.png',
                width: screenWidth *0.6,
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
                  controller: controller.firstname,
                decoration: InputDecoration(
                  hintText: 'First Name',
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
              const SizedBox(height:15 ,),
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
                  controller: controller.lastname,
                decoration: InputDecoration(
                  hintText: 'Last Name',
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
              const SizedBox(height:15 ,),
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
              const SizedBox(height:15 ,),
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
                  controller: controller.phoneNumber,
                  obscureText: true,
                
                decoration: InputDecoration(
                  hintStyle:const  TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                  hintText: 'Phone Number',
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
              const SizedBox(height:15 ,),
         
         
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
                  obscureText: true,
                
                decoration: InputDecoration(
                  hintStyle: const TextStyle(fontWeight: FontWeight.bold,fontSize:19,color: Colors.grey,),
                  hintText: '   Password',
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
              const SizedBox(height: 15,),
               
              const SizedBox(height:20 ,),
             ElevatedButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    
                ),),
                  backgroundColor: WidgetStateProperty.all<Color>(
                   const  Color(0xFFFC4B60),
                    
                  ),
                  fixedSize: WidgetStateProperty.all<Size>( Size(screenWidth *0.9, 55),),
                  
                  
                ),
                
                  
               onPressed:()=> controller.signup(),
                  
                  
              
               
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0, right:20.0, ),
               
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      
                      
                    ),
                  ),
                ),
              ),
              const SizedBox(height:5 ,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Text(
                    'do you already have an account ?',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                   ),
                   TextButton(
                    onPressed: (){
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signin()),);
                    },
                     child: const Text('login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFFFC4B60)),),
                   ),
                   const SizedBox(height: 20,),
               
                ],
              ),
             
              
               
            ],
                 ),
           ]
           
         ),
      ),
    );
  }
}