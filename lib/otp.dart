import 'package:flutter/material.dart';

class MyOTP extends StatefulWidget {
  const MyOTP({super.key});

  @override
  State<MyOTP> createState() => _MyOTPState();
}

class _MyOTPState extends State<MyOTP> {
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
              child: Text('OTP \nVerification', style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
              ),),
            ),
            Container(
                padding: EdgeInsets.only(left: 35, top:225),
                child: Text('We Will send you a one time password on \nthis  Mobile Number \n+91 - XXXXXXXXXX',
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
                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Enter OTP',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),

                    SizedBox(

                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Verify OTP', style: TextStyle(
                          color: Color(0xff006491),
                          fontSize: 27, fontWeight: FontWeight.w700),
                      ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff006491),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){
                              Navigator.pushNamed(context, 'setPassword');
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
