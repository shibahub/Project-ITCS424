import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:itcs_424/main.dart';
import 'package:itcs_424/screen/detail.dart';
import 'package:itcs_424/screen/overview.dart';
import 'package:itcs_424/screen/cart.dart';

class Payment extends StatefulWidget {
  @override
  _Payment createState() => _Payment();
}

class _Payment extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Payment'),
        ),
        body: SafeArea(
            child: Center(
          child: Ink.image(
            image: const AssetImage('img/rickroll.JPG'),
            height: 300,
          ),
        )));
  }
}
