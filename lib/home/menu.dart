import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/,controllers/user_controller.dart';
import 'package:hope/authentication/login.dart';
import 'package:hope/common/CircleImage.dart';
import 'package:hope/home/profile/profile.dart';
import 'home.dart';
import 'settings.dart';

class Menuu extends StatefulWidget {
  const Menuu({super.key});

  @override
  State<Menuu> createState() => _MenuuState();
}

class _MenuuState extends State<Menuu> {
  @override
  Widget build(BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final controller = UserController.instance;
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0.1,
      leading: Container(
            margin:const EdgeInsets.only(top: 12,bottom:10),
            child: IconButton(
              icon: const Icon( 
                Icons.arrow_back,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: (){
                Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  const Homee())
                    );
              },
            ),
          ),
    ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(


            height: screenHeight * 0.16,
            width: screenWidth * 0.85,
            padding: const EdgeInsets.only(top: 25.0, left: 40.0, right:50.0,bottom: 25),
            decoration: const BoxDecoration(
              color: Colors.redAccent,

              borderRadius: BorderRadius.only(
                topRight: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),),
            child:   Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Obx(
                  ()=> TCircleImage(
                image: controller.user.value.profilePicture, width: 80, height: 80,isNetworkImage: true,),
                ),
                Obx(
                  ()=> Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(controller.user.value.firstname,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                  
                          )
                      ),
                      Text(controller.user.value.lastname,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                  
                          )
                      )
                    ],
                  ),
                )




              ],
            ),
          ),
          Column(

            children: [
              Container(
                  height: screenHeight * 0.10,
                  width: screenWidth,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        height: screenHeight * 0.10,
                        width: screenWidth* 0.3,
                        color: Colors.redAccent,
                        child: const Icon(Icons.person_rounded,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      
                      TextButton(
                        style: TextButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () => Get.to(()=>Profile()),
                        child: const Text("Profile",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  const Profile())
                          );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: screenHeight * 0.10,
                  width: screenWidth,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        height: screenHeight* 0.10,
                        width: screenWidth * 0.3,
                        color: Colors.redAccent,
                        child: const Icon(Icons.history,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  const Profile())
                          );
                        },
                        child: const Text("History",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const Homee())
                          );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: screenHeight * 0.10,
                  width: screenWidth,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.3,
                        color: Colors.redAccent,
                        child: const Icon(Icons.event_note_rounded,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) =>  const Guides())
                          // );
                        },
                        child: const Text("Guidlines",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => const Guides())
                          // );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: screenHeight * 0.1,
                  width: screenWidth,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        height: screenHeight * 0.1,
                        width: screenWidth * 0.3,
                        color: Colors.redAccent,
                        child: const Icon(Icons.settings,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  const Setting())
                          );
                        },
                        child: const Text("Settings",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  const Setting())
                          );
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),
              Container(
                  height: screenHeight * 0.14,
                  width: screenWidth,
                  padding: const EdgeInsets.only(top: 0.0, left: 0.0, right:0.0,bottom: 35.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,

                          borderRadius: BorderRadius.only(

                            bottomRight: Radius.circular(60),
                          ),),
                        height: screenHeight * 0.14,
                        width: screenWidth * 0.3,
                        padding: const EdgeInsets.only(left: 6,right: 0,top: 0,bottom: 3.0),

                        child: const Icon(Icons.logout,
                          size: 56.0,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                         FirebaseAuth.instance.signOut();
                           Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>  const Signin())
                    );        
                         
                        },
                        child: const Text("Log out",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,

                            )
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(

                            minimumSize: const Size(20, 20),
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.white)
                        ),
                        onPressed: () {
                           FirebaseAuth.instance.signOut();
                           Navigator.push(context,
                                   MaterialPageRoute(builder: (context) =>  const Signin())
                    );        
                        },
                        child: const Icon(Icons.arrow_forward_ios,
                          size: 36,
                          color: Colors.black,),
                      )


                    ],
                  )
              ),

            ],
          )
        ],
      )
  );}
  }