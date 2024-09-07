import 'package:flutter/material.dart';
import 'home.dart';


class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) => Scaffold(

    backgroundColor: const Color(0xFF69BEC5),
    appBar: AppBar(
      backgroundColor: Color(0xFF69BEC5),
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
    body: Container(
    

      padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Column(
        children: [
          
          Image.asset("lib/assets/images/272acf4c5698d3f8fe96b72ae4344c55.jpg",
            height: 210,


          ),
          const SizedBox(height: 30,),
          const Text("Notifications",
              style: TextStyle(
                color: Colors.black,

                fontSize: 26.0,
                fontWeight: FontWeight.bold,

              )
          ),
           const SizedBox(height: 20,),
          Card(



            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const ListTile(
              leading: Icon(Icons.local_hospital,
                color: Colors.redAccent,
                size: 32,
              ),
              title:Text("Thank you for your donation",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,

                  )
              ),
              subtitle:Text("1w",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 18.0,
                    fontWeight: FontWeight.w200,

                  )
              )
              ,

            ),

          ),
          const SizedBox(height: 4,),
          Card(



            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const ListTile(
              leading: Icon(Icons.local_hospital,
                color: Colors.redAccent,
                size: 32,
              ),
              title:Text("A new Camp started ",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,

                  )
              ),
              subtitle:Text("2h",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 18.0,
                    fontWeight: FontWeight.w200,

                  )
              )
              ,

            ),

          ),




        ],
      ),


    ),


  );}