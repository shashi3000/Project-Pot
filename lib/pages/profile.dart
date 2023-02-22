
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: MediaQuery.of(context).size.height * 1,
           width: MediaQuery.of(context).size.width * 1,
             // Below is the code for Linear Gradient.
           decoration: const BoxDecoration(
               gradient: LinearGradient(
               colors: [Color.fromARGB(255, 138, 234, 141), Color.fromARGB(255, 234, 154, 49)],
              begin: Alignment.bottomLeft,
               end: Alignment.topRight,
          ),
        ),
        child: SingleChildScrollView(
         
          child: Column(
            
            children: [
              Container(
                
                height: 175,
                child:Center(
                child:ProfilePicture(
                name: 'Shashi Ranjan',
                radius: 70,
                fontsize: 21,
                img: 'assets/images/shashi.jpg',
                  ),
              ),
              ),
              
              Text("Shashi", style: TextStyle(fontSize: 40),),
              Text("App developer", style: TextStyle(fontSize: 20, color: Colors.grey[1000]),),
              SizedBox(height: 12,),
              ListTile( title: Text("Email"),subtitle: Text("shashi3k3k@gmail.com"),leading: Icon(Icons.email),),
              SizedBox(height: 12,),
              ListTile( title: Text("Plant"),subtitle: Text("Rose"),leading: Icon(Icons.nature),),
              SizedBox(height: 12,),
              ListTile( title: Text("Phone No."),subtitle: Text("9900553158"),leading: Icon(Icons.phone),),
      
            ],
            
          ),
          
          
        ),
      ),
      
    );
  }
}

