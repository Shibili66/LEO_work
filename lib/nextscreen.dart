import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget{
  final String name, email,phone,add;

  const NextScreen(
  {
    super.key,
    required this.name,
    required this.email,
    required this.phone,
    required this.add
}
      );
  @override
  Widget build(BuildContext context) {
    TextEditingController _name = TextEditingController(text: name);
        TextEditingController _Email = TextEditingController(text: email);
    TextEditingController _phone = TextEditingController(text: phone);
        TextEditingController _add = TextEditingController(text: add);

        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                    border: Border.all(width: 4,color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1)
                      )
                    ],
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg?w=2000")
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                    controller: _name,
                    decoration: const InputDecoration(
                      errorBorder: InputBorder.none,
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
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email_outlined)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                    controller: _phone,
                    decoration: const InputDecoration(
                        labelText: "Phone Number",
                        prefixIcon: Icon(Icons.phone)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                    controller: _add,
                    decoration: const InputDecoration(
                        labelText: "Address",
                        prefixIcon: Icon(Icons.home)
                    )
                ),
              ),
            ],
          ),
        );
  }
}