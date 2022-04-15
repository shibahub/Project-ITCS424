//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:itcs_424/screen/secondpage.dart';
import 'package:itcs_424/screen/thirdpage.dart';
import 'package:itcs_424/screen/login_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet mark',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PetMark'),
      ),
      body: Center(
         child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
              flex:2,
              child: Image(image: AssetImage('img/shiba.png')),
            ),
          ElevatedButton(child: Text('Petmark shop'),
          style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  fixedSize: Size(200, 35),
                  
                ),
          onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context) =>  Search())),),
          
          ElevatedButton(child: Text('Regrister'),
          style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  fixedSize: Size(200, 35),
                  
                ),
          onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context) =>  const SecondRoute())),),
          
          ElevatedButton(child: Text('Login'),
          style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  fixedSize: Size(200, 35),
                ),
          onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const loginRoute())),),
          
          ],
        ),
        )
      ) 
    );
  }
}




