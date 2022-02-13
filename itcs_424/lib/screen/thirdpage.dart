import 'dart:html';

import 'package:flutter/material.dart';
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