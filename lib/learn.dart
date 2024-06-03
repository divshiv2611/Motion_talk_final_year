import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LearnISL extends StatefulWidget {
  const LearnISL({super.key});

  @override
  State<LearnISL> createState() => _LearnISLState();
}

class _LearnISLState extends State<LearnISL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              alignment: Alignment.bottomCenter,
              height: 170,
              decoration: BoxDecoration(
                color: Color(0xff006491),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Motion Talk',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Learn ISL',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black.withOpacity(.1),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.chat,
                            size: 28,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black.withOpacity(.1),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.logout,
                            size: 28,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            FirebaseAuth.instance.signOut().then((value) {
                              print("Signed Out");
                              Navigator.pushNamed(context, 'login');
                              Fluttertoast.showToast(msg: 'User logged out successfully');
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Card(
              elevation: 20,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width: 300,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        height: 280,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage('assets/isl.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
                height: 12,
            ),
            Text(
              "ISL Representation",
              style: const TextStyle(
                 fontSize: 18,
              ),
           ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
