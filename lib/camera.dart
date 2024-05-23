import 'package:flutter/material.dart';

class MyCamera extends StatefulWidget {
  const MyCamera({super.key});

  @override
  State<MyCamera> createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motion Talk'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
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
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(image: AssetImage('assets/upload.jpg'))
                          ),
                          child:const Text(''),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        const Padding(
                            padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("Label",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                            ),),
                            const SizedBox(
                              height: 12,
                            ),
                            Text("Accuracy is 90%",
                              style: TextStyle(fontSize: 18,
                              ),),
                            const SizedBox(
                              height: 12,
                            ),
                          ],
                        ),),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    foregroundColor: Colors.black
                  ),
                  child: const Text("Open Camera")),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      foregroundColor: Colors.black
                  ),
                  child: const Text("Upload From Gallery")),
            ],
          ),
        ),
      ),
    );
  }
}
