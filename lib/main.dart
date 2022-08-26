import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'popup',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: popup());
  }
}

class popup extends StatelessWidget {
  const popup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // shape: CircleBorder(),

          primary: Color.fromARGB(255, 85, 0, 255),
          maximumSize: Size(200, 100),
          minimumSize: Size(120, 50),
        ),
        onPressed: () {
          showDialog(
              context: context,
              builder: ((context) {
                return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: AlertDialog(
                    title: Text(
                      "Topup Amount",
                      style: TextStyle(fontSize: 20),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Enter Amount",
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("Cancel")),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 85, 0, 255),
                                ),
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  "Topup",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }));
        },
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "Top up",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
