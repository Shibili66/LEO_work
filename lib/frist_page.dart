import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nextscreen.dart';

class profile extends StatefulWidget {
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  final TextEditingController _name = TextEditingController();
  final TextEditingController _phone = TextEditingController();
  final TextEditingController _Email = TextEditingController();
  final TextEditingController _add = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         const Padding(
           padding: EdgeInsets.all(15),
           child: Text("Enter Details",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             controller: _name,
             decoration: const InputDecoration(
               border: OutlineInputBorder(),
               labelText: "Full Name",
               prefixIcon: Icon(Icons.account_circle)
               )
             ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             controller: _Email,
               decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Email",
                   prefixIcon: Icon(Icons.email_outlined)
               )
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             controller: _phone,
               decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Phone Number",
                   prefixIcon: Icon(Icons.phone)
               )
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextFormField(
             controller: _add,
               decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: "Address",
                   prefixIcon: Icon(Icons.home)
               )
           ),
         ),
         ElevatedButton(
           style: ButtonStyle(
             backgroundColor: MaterialStateProperty.all(Colors.pinkAccent,),
           ),
             onPressed: (){
               Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => NextScreen(
                       name: _name.text,
                     email: _Email.text,
                     phone: _phone.text,
                     add : _add.text,
                   )
               ));
             },
             child: const Text("Enter",style: TextStyle(color: Colors.white),))
       ],
     ),
   );
  }
}