 import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hope/authentication/,controllers/user_controller.dart';
import 'package:hope/common/CircleImage.dart';
import 'package:hope/common/roundBanner.dart';
import 'package:hope/home/campanies.dart';
import 'package:hope/home/emergency.dart';
import 'package:hope/home/friends.dart';
import 'package:hope/home/menu.dart';
import 'package:hope/home/notifiication.dart';
import 'package:hope/home/profile/profile.dart';
// import 'package:hope/screens/infoForm_screen.dart';
// import 'check.dart';
// import 'emrgency.dart';
// import 'formul.dart';
// import 'menu.dart';
// import 'notifications.dart';
// import 'friends.dart';
// import 'profile.dart';
// import 'campaings.dart';


class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
        final controller = Get.put(UserController());

    return Scaffold(
    appBar: AppBar(
  backgroundColor: Colors.white, // Set background color if needed
  elevation: 0, // Removes shadow if not required
  leading:      IconButton(
      icon: const Icon(
        Icons.menu,
        size: 30.0,
        color: Colors.black87,
      ),
      onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Menuu())
                    );
                  },
    ),
  
  
  
  
  
  
  
  
  
  
  
  
  actions: [
    IconButton(
      icon: const Icon(
        Icons.notifications,
        size: 30.0,
        color: Colors.black87,
      ),
      onPressed:  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Noti())
                    );
                  },
    ),
    const SizedBox(width: 10), // Add spacing between the icons
  ],
),


    backgroundColor: Colors.white,
    body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0,),
        child: ListView(
          children: [

        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

              Row(
              children: [
               Obx(
                  ()=> TCircleImage(
                image: controller.user.value.profilePicture, width: 80, height: 80,isNetworkImage: true,),
                ),
                SizedBox(width: 10,),
                Text("Welcome,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(width: 4,),
                Obx(
                  ()=> Text(controller.user.value.firstname,
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
            const SizedBox(height: 30.0,),

            TextField(

              decoration: InputDecoration(

                  hintText: "Search by Hospital or  blood group",
                  hintStyle: const TextStyle(fontWeight: FontWeight.w400),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, ),

                  prefixIcon: const Icon(
                    Icons.search,
                    size: 27,
                    color: Colors.grey,

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),

            const SizedBox(height: 30,),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text("Compaings & events",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios,
                  size: 27,
                  color: Colors.redAccent,
                ),
              ],
            ),
            const SizedBox(height: 20,),
            CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1,
            ),
            items:[ TRoundedBanner(imageUrl:'lib/assets/images/_107408436_blooddonationman.jpg' , onPressed: ()=>Get.to(Visit()),width: 290,borderRadius: 70,),
            TRoundedBanner(imageUrl:'lib/assets/images/272acf4c5698d3f8fe96b72ae4344c55.jpg' , onPressed: ()=>Get.to(Visit()),width: 290,borderRadius: 70,),
            TRoundedBanner(imageUrl:'lib/assets/images/4a41b33bf3dc2eef92dae829b42e3633.jpg' , onPressed: ()=>Get.to(Visit()),width: 290,borderRadius: 70,),
            ] ,
           
      
              
            
          ),
           




            const SizedBox(height: 30,),
            ElevatedButton(
             style: ButtonStyle(
                  
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    
                ),),
                  backgroundColor: WidgetStateProperty.all<Color>(
                   const  Color(0xFFFC4B60),
                    
                  ),
                  fixedSize: WidgetStateProperty.all<Size>(const Size(377, 55),),
                  
                  
                ),


                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  const Friend())
                  );
                },
                child:    const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.people_rounded,
                        size: 30,
                        color: Colors.white,),
                      
                      Text("Donate with friends   ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          )),
                      
                      Icon(Icons.arrow_forward_ios,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),



            ),


            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    fixedSize: WidgetStateProperty.all<Size> (const Size(150,190
                    ),),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.white),


                  ),


                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  const Emer())
                    );
                  },

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          // padding: const EdgeInsets.only(left: 7,top: 10.0,right: 11),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("lib/assets/images/4a41b33bf3dc2eef92dae829b42e3633.jpg"),
                            radius: 40.0,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text("Emergency requests",
                        textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 0,),
                        
                          
                          // padding: const EdgeInsets.only(left: 30,top: 10.0,right: 11),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("9 cases",
                              textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                size: 18,
                                color: Colors.redAccent,),

                            ],
                          ),
                        
                        const SizedBox(height: 10,),



                      ],
                    ),



                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    fixedSize: WidgetStateProperty.all<Size> (const Size(150,190
                    ),),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.white),


                  ),


                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) =>  const Formul())
                    // );
                  },

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // padding: const EdgeInsets.only(left: 7,top: 10.0,right: 11),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage("lib/assets/images/4a41b33bf3dc2eef92dae829b42e3633.jpg"),
                          radius: 40.0,
                        ),
                      ),
                    const SizedBox(height: 5,),
                      const Text("Test",
                      textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Text("Answer questions",
                      textAlign: TextAlign.center,
                      
                       style: TextStyle(
                         color: Colors.redAccent,
                         fontSize: 13.0,
                         fontWeight: FontWeight.bold,
                       ),
                          ),
                      const SizedBox(height: 10,),



                    ],
                  ),



                ),




              ],
            ),
            const SizedBox(height: 50,),






          ],
        )
        ]
        )


    ),
    bottomNavigationBar: SizedBox(
      height: 70,
      child: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height:50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){
                  //  Navigator.push(context,
                  //       MaterialPageRoute(builder: (context) => const InfoScreen())
                  //   );

                },
                icon: const Icon(Icons.home_outlined,
                  color: Colors.black87,

                ),iconSize: 45,),
              CircleAvatar(


                radius: 30,
                backgroundColor: const Color(0xFFFC4B60),
                child: IconButton(
                  onPressed: (){
                    //  Navigator.push(context,
                    // MaterialPageRoute(builder: (context) =>  const Check())
                // );
                  },
                  icon: const Icon(Icons.add),
                  iconSize: 38,

                  color: Colors.white,
                ),
              ),
              IconButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  const Profile())
                );


              }, icon: const Icon(Icons.person_2_outlined,),iconSize:45,),
            ],

          ),

        ),

      ),
    ),





  );
  }
}