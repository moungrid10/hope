import 'package:flutter/material.dart';
import 'package:hope/authentication/login.dart';
import 'package:hope/authentication/signup.dart';






class Visiteur extends StatefulWidget {
  const Visiteur({super.key});

  @override
  State<Visiteur> createState() => _VisiteurState();
}

class _VisiteurState extends State<Visiteur> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white
      ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,

        title: Container(
          margin: const EdgeInsets.only(top: 0,bottom: 0),
          child: Image.asset("lib/assets/images/LOGO.png",
          width: 180 ),

        ),
        actions: [
          Container(
            padding: EdgeInsets.all(0),
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  )
                ),
                fixedSize: WidgetStateProperty.all<Size> (const Size(90,30),),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.redAccent),
              ),

              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signin())
                );
              },
              child: const Text("Login",
              maxLines: 1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),),
            ),
          ),
        ],


      ),
      body: Container(
        padding: const EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0,bottom: 20,),
        child: ListView(
          scrollDirection: Axis.vertical,
          
          children: [
          

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               const Row(
                children: [
                  Icon(Icons.person_2_outlined,
                  size: 35,
                  color: Colors.black,),
                  SizedBox(width: 8,),
                  Text("Welcome, Friend !",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      )),
        
                ],
              ),
              const SizedBox(height: 20,),
              
              Container(
                width: 300,
                height: 250,
                padding: const EdgeInsets.only(left: 9,right: 5,top: 10,bottom: 10.0),
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
                        blurRadius: 8.0,
                        color: Colors.grey,
                      )
                    ]
        
        
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("What is HOPE ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("lib/assets/images/caract.png",
                        width: 120,),
                        const SizedBox(width: 10,),
                        Column(
                          children: [
                            const Text("HOPE ",
        
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(height: 8,),
                            const Text("Is a blood donation\n"
                                "who gather doners\n"
                                "        arround u  ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(height: 10,),
                            ElevatedButton(
                              style: ButtonStyle(
                                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    )
                                ),
                                fixedSize: WidgetStateProperty.all<Size> (const Size(90,27),),
                                backgroundColor: WidgetStateProperty.all<Color>(Colors.redAccent),
                              ),
        
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const Signin())
                                );
                              },
                              child: const Text("Read",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
        
                          ],
                        )
                  ],
                ),
          ]
        
        
        )
        
              ),
              const SizedBox(height: 20,),

             
         
              
              Container(
                  width: 300,
                  height: 200,
                  padding: const EdgeInsets.only(left: 2,right: 5,top: 0,bottom: 5.0),
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
                          blurRadius: 8.0,
                          color: Colors.grey,
                        )
                      ]
        
        
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
        
                        Row(
                          children: [
                            Image.asset("lib/assets/images/bloodo.png",
                              width: 110,),
                            const SizedBox(width: 0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text("Blood Donation ",
        
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(height: 8,),
                                const Text("its definition, condition\n"
                                    "   and how its occurs\n",
        
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold,
                                    )),
                                const SizedBox(height: 0,),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30),
                                        )
                                    ),
                                    fixedSize: WidgetStateProperty.all<Size> (const Size(90,27),),
                                    backgroundColor: WidgetStateProperty.all<Color>(Colors.redAccent),
                                  ),
        
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => const Signin())
                                    );
                                  },
                                  child: const Text("Read",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                ),
        
                              ],
                            )
                          ],
                        ),
                      ]
        
        
                  )
        
              ),const SizedBox(height: 20,),
        
               const Row(
                children: [
                  Text("Create your own account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 60,
                width: 320,
        
                padding: const EdgeInsets.only(left: 2,right: 5,),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    boxShadow:[
                      BoxShadow(
        
                        offset: Offset(0, 2),
                        blurRadius: 8.0,
                        color: Colors.grey,
                      )
                    ]
        
        
                ),
                child: Card(
                  color: Colors.white,
                  elevation: 0,
        
        
        
        
        
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
        
        
                  ),
        
                  child:  ListTile(
        
        
                    leading: const Icon(Icons.person_add_alt_1,
                    size: 30,
                    color: Colors.black,),
                    title:const Text("Be one of us",
                        style: TextStyle(
                          color: Colors.black,
        
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
        
                        )
                    ),
        
        
                    trailing:   ElevatedButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            )
                        ),
                        fixedSize: WidgetStateProperty.all<Size> (const Size(100,27),),
                        backgroundColor: WidgetStateProperty.all<Color>(Colors.redAccent),
                      ),
        
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Signup())
                        );
                      },
                      child: const Text("Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
        
                  ),
        
                ),
              ),
              const SizedBox(height: 30,),
                        
            
            
            ],
            
              
            
        
        
          ),
          ],
        ),


      ),




    );
  }
}