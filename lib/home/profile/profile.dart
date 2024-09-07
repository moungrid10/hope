import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/,controllers/user_controller.dart';
import 'package:hope/authentication/login.dart';
import 'package:hope/common/CircleImage.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
     final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      
    appBar: AppBar(
  backgroundColor: Colors.white, // Set background color if needed
  elevation: 0, // Removes shadow if not required
  leading: OutlinedButton(
    style: OutlinedButton.styleFrom(
      backgroundColor: const Color(0xFFFAFAFB),
      side: const BorderSide(color: Color(0xFFFAFAFB)),
    ),
    onPressed: () {
      Navigator.pop(context);
    },
    child: const Icon(
      Icons.arrow_back_ios,
      size: 24.0,
      color: Colors.black87,
    ),
  ),
  title: const Text(
    "Profile",
    style: TextStyle(
      color: Colors.black,
      fontSize: 26.0,
      fontWeight: FontWeight.w700,
    ),
  ),
  actions: [
    IconButton(
      icon: const Icon(
        Icons.edit,
        size: 30.0,
        color: Colors.black87,
      ),
      onPressed: () {
        // Action for the edit icon
      },
    ),
    const SizedBox(width: 10), // Add spacing between the icons
  ],
),

    
    body: Container(
      padding: const EdgeInsets.only(top: 50.0,),
      child: ListView(
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            
            Container(
             //   padding: const EdgeInsets.all(10.0),
                child:  Obx(
                  ()=> TCircleImage(
                image: controller.user.value.profilePicture, width: 80, height: 80,isNetworkImage: true,),
                )
            ),
            TextButton(
            
              onPressed: () => controller.uploadUserProfilePicture(), child: const Text("change Profile Picture", style: TextStyle(color: Colors.grey),)),

            const SizedBox(width: 68.0,height: 20.0,),
             Text(controller.user.value.fullName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
      
                )
      
            ),
            const SizedBox(height: 30.0,),
            Container(
                width: screenWidth * 0.7,
                height: 60.0,
                padding: const EdgeInsets.only(left: 17,right: 10,top: 0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:  const Row(
                  children:[
                    Icon(Icons.assignment_turned_in_outlined,
                      size: 30.0,
                      color: Colors.redAccent,),
                    SizedBox(width: 14.0,),
      
      
                    Text("Available to donate",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
      
                        )
                    ),
                   
      
      
      
      
      
                  ],
                )
      
            ),
          
            
            const SizedBox(height: 15.0,),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                    width: screenWidth* 0.4,
                    height: 70.0,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                       
                       
                        boxShadow:[
                          BoxShadow(
                       
                            offset: Offset(0, 2),
                            blurRadius: 20.0,
                            color: Colors.black26,
                          )
                        ]
                    ),
                    child:  const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       
                      children: [
                        Center (
                          child: Icon(Icons.bloodtype,
                            size: 30.0,
                            color: Colors.redAccent,),
                        ),
                       
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Blood Group"
                                ,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto-Bold.ttf',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                       
                                )
                            ),
                            
                            Text("A+"
                                ,
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontFamily: 'Roboto-Bold.ttf',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                       
                                )
                            ),
                       
                          ],
                        ),
                       
                       
                       
                       
                       
                       
                       
                       
                      ],
                    )
                       
                             ),
               
                  Container(
                width: screenWidth*0.4,
                height: 70.0,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:  const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
                  children: [
                    Center (
                      child: Icon(Icons.calendar_month,
                        size: 30.0,
                        color: Colors.redAccent,),
                    ),
                   
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Date of birth"
                            ,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
                        
                        Text("25-04-2002"
                            ,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
      
                      ],
                    ),
      
      
      
      
      
      
      
      
                  ],
                )
      
            ),
               ],
             ),
            const SizedBox(height: 15.0,),
      
           
            Container(
                width: screenWidth * 0.9,
                height: 70.0,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:  Row(
                  children: [
                    Icon(Icons.email_outlined,
                      size: 30.0,
                      color: Colors.redAccent,),
                    const SizedBox(width: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
                      children: [
                        const Text("Email"
                            ,
      
      
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
                        
                        Text(
                          controller.user.value.email,
                            style: const TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            ),
                        ),
                      ],
                    ),
                  ],
                )
      
            ),
      
            const SizedBox(height: 15.0,),
            Container(
                width: screenWidth*0.9,
                height: 70.0,
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
      
      
                    boxShadow:[
                      BoxShadow(
      
                        offset: Offset(0, 2),
                        blurRadius: 20.0,
                        color: Colors.black26,
                      )
                    ]
                ),
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.phone,
                      size: 30.0,
                      color: Colors.redAccent,),
                    SizedBox(width: 20.0,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
      
                      children: [
                         Text("Phone number"
                            ,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto-Bold.ttf',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
                        
                         Text(controller.user.value.phoneNumber
                            ,
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
      
                            )
                        ),
      
                      ],
                    ),
      
      
      
      
      
                  ],
                )
      
            ),
           const  SizedBox(height: 50,),
           ElevatedButton(
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.red, // Set the background color
    minimumSize:  Size(screenWidth * 0.9, 50), // Make button full-width with a minimum height
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30), // Rounded corners
    ),
  ),
  onPressed: () async {
    await FirebaseAuth.instance.signOut(); // Ensure sign out completes
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Signin()),
    );
  },
  child: const Text(
    'Sign Out',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
),

          
        
          ],
        ),
        ],
      ),
    ),
  );
  }
}