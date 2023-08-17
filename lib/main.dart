import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: HomePage(),
    );
  }
}

/*

In this example, we define a CounterController class that extends GetxController.
It contains a count variable that represents the state we want to manage.
The increment method increases the count and calls update() to notify GetX about the state change.
The HomePage widget uses GetBuilder to listen to the changes in CounterController.
The init parameter initializes the controller, and the builder method provides the updated UI based on the current state.
The Get.find<CounterController>() inside the onPressed callback retrieves the controller instance and calls the increment method.

 */

