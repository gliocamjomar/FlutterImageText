import 'package:flutter/material.dart';

/*Import the material design library, it provides widgets

the material dart is part of a FLUTTER SDK and implements design guidelines for UI
**/

void main() {
  runApp(const myApp()); //flutter app functions initialize the app tjat attached on the root widget (main screen) to the screen.
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'JG art',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );

  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DMC Art'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network ('assets/DMC.jpg',
              width: 1000,
              height: 750,
            ),
            const Text(
              'Devil May Cry',
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              'Devil May Cry  is an urban fantasy action-adventure game franchise created by Hideki . It is primarily developed and published by Caps',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );


  }
}