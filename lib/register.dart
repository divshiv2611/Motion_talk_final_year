import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:motion_talk/reuseable/reusable_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _phoneTextController = TextEditingController();
  TextEditingController _aadharTextController = TextEditingController();
  TextEditingController _nameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 0),
              child: Text(
                'Create \nAccount',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.15,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    reusableTextField("Enter UserName", Icons.person_outline,
                        false, _nameTextController),
                    SizedBox(
                      height: 30,
                    ),
                    reusableText("Enter Phone Number",
                        Icons.phone_outlined, _phoneTextController),
                    SizedBox(
                      height: 40,
                    ),
                    reusableTextField("Enter Email", Icons.email_outlined,
                        false, _emailTextController),
                    SizedBox(
                      height: 30,
                    ),
                    reusableText("Enter Aadhar Number",
                        Icons.person_outlined, _aadharTextController),
                    SizedBox(
                      height: 30,
                    ),
                    reusableTextField("Enter Password(Min 6 Char)",
                        Icons.lock_outline, true, _passwordTextController),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color(0xff006491),
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff006491),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _emailTextController.text,
                                      password: _passwordTextController.text)
                                  .then((value) {
                                    CollectionReference collRef=FirebaseFirestore.instance.collection('user');
                                    collRef.add({
                                      'Name': _nameTextController.text,
                                      'Email': _emailTextController.text,
                                      'Phone': _phoneTextController.text,
                                      'Password': _passwordTextController.text,
                                      'Aadhar_Number': _aadharTextController.text,
                                    });
                                Navigator.pushNamed(context, 'login');
                                Fluttertoast.showToast(msg: 'User Registered Successfully');
                              }).
                              onError((error, stackTrace) {
                                print("erroe ${error.toString()}");
                                Fluttertoast.showToast(msg: 'Error ${error.toString()}');
                              });
                            },
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'login');
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color(0xff006491),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
