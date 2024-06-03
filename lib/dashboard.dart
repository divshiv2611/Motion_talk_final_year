import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                      'Dashboard',
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
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: const TextSpan(
                      text: "Storage",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                            text: "9.1/10 GB",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                            ))
                      ]),
                ),
                const Text(
                  "Upgrade",
                  style: TextStyle(
                    color: Color(0xff006491),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 4,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Sources",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 3,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Docs",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      height: 3,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Images",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 3,
                      color: Colors.grey[200],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Left",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 20,
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(25),
            children: [
              const Text(
                "Catch Up",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(38),
                          height: 100,
                          child: Image.asset(
                            'assets/img.png',
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Expert Advice',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 10,
                              color: Color(0xff006491),
                            ),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(38),
                          height: 100,
                          child: Image.asset(
                            'assets/faq.png',
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'FAQ',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 10,
                              color: Color(0xff006491),
                            ),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(38),
                          height: 100,
                          child: Image.asset(
                            'assets/about.png',
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'About Us',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 10,
                              color: Color(0xff006491),
                            ),
                          ))
                    ],
                  )
                ],
              ),
              Divider(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ISL Learning",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {Navigator.pushNamed(context, 'test');},
                    child: Text(
                      'Test Yourself',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff006491)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              bulidProjectRow('ISL Blog'),
              bulidProjectRow('ISL Learning Easy Blog'),
              // bulidProjectRow('Sign Language Features'),
              // bulidProjectRow('ASL Learing'),
            ],
          ))
        ],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          BoxShadow(color: Colors.white, spreadRadius: 7, blurRadius: 1)
        ]),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'camera');
          },
          child: const Icon(
            Icons.camera,
            color: Color(0xff006491),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'dashboard'),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Post')
          ]),
    );
  }

  Container bulidProjectRow(String folder) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.image,
                color: Color(0xff006491),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                folder,
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
          IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_rounded,
                color: Color(0xff006491),
              )),
        ],
      ),
    );
  }
}
