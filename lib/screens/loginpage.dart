import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:merosapana/screens/signup.dart';

import '../home/homepage.dart';


class logIn extends StatefulWidget {
  const logIn({Key? key}) : super(key: key);

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  //initialize
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/back.jpg'), fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(left: 45, top: 150),
                child: Text(
                  'मेरो सपना',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 300,
                  left: 20,
                  right: 20,
                ),
                child: Container(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 199, 237, 245)),
                      hintText: 'enter your name',
                      labelText: 'Name ',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    validator: (String? value) {
                      return (value != null && value.contains('@,%,&,*'))
                          ? 'Do not use the @,%,&,* in your name.'
                          : null;
                    },
                  ),
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(top: 370, left: 20, right: 20),
                child: Container(
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.password),
                      hintStyle: TextStyle(color: Colors.black),
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 199, 237, 245)),
                      hintText: 'enter your password',
                      labelText: 'Password ',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450, left: 130),
                child: Text(
                  " आउ पल्टाउ मेरा सपनाको पाना -->",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 500, left: 180),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homePage()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "LETS-GO",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    height: 25,
                    width: 120,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 850, left: 100),
                child: Text(
                  "Knock Knock ,I am new here...",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 880, left: 180),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signUp()),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "SIGN-UP",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 930, left: 120),
                child: Text(
                  "प्रसन्नताले सदैव सम्पन्नता मिल्छ ।",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 950, left: 150),
                child: Text(
                  " - दीप दर्शन थापा",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
