import 'dart:html';

import 'package:flutter/material.dart';
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