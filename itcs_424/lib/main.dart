import 'dart:html';

import 'package:flutter/material.dart';

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
          ElevatedButton(child: Text('Find pet service'),
          style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  fixedSize: Size(200, 35),
                  
                ),
          onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondRoute())),),
          ElevatedButton(child: Text('Petmark shop'),
          style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  fixedSize: Size(200, 35),
                  
                ),
          onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const thirdRoute())),),
          ElevatedButton(child: Text('login'),
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

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Pet service'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator . pop( context );
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
class thirdRoute extends StatelessWidget {
  const thirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet mark shop'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator . pop( context );
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
class loginRoute extends StatelessWidget {
  const loginRoute({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline1,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('ENTER'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FirstRoute()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

