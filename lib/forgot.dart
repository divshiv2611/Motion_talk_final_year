import 'package:flutter/material.dart';
import 'package:motion_talk/reuseable/reusable_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';


class MyForgot extends StatefulWidget {
  const MyForgot({super.key});

  @override
  State<MyForgot> createState() => _MyForgotState();
}

class _MyForgotState extends State<MyForgot> {
  TextEditingController _emailTextController = TextEditingController();
  final auth= FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top:50),
              child: Text('Forgot \nPassword', style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
              ),),
            ),
            Container(
              padding: EdgeInsets.only(left: 35, top:225),
              child: Text('Enter the Email \nassociated with your account \nto change your Password',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),)
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.48,
                    right: 35,left: 35
                ),
                child: Column(
                  children: [
                    reusableTextField("Enter Email", Icons.email_outlined,
                        false, _emailTextController),
                    SizedBox(
                      height: 30,
                    ),

                    SizedBox(

                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Change Password', style: TextStyle(
                          color: Color(0xff006491),
                          fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff006491),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                             auth.sendPasswordResetEmail(email: _emailTextController.text.toString().trim())
                                  .then((value) {
                                Navigator.pushNamed(context, 'login');
                                Fluttertoast.showToast(msg: 'Set your password using your registered email');
                              }).onError((error, stackTrace) {
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
                      height: 40,
                    ),

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
